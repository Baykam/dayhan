package server

import (
	"database/sql"
	authRoutes "dayhan/internal/auth/port/http"
	"dayhan/internal/auth/service/token"
	productRoutes "dayhan/internal/client/port/http"
	"dayhan/internal/middleware"
	"dayhan/internal/packages/config"
	kfk "dayhan/internal/packages/kafka"
	rds "dayhan/internal/packages/redis"
	"fmt"
	"log"
	"net/http"
	"time"

	"github.com/gin-contrib/cors"
	"github.com/gin-gonic/gin"
	"github.com/quangdangfit/gocommon/logger"
	"github.com/quangdangfit/gocommon/validation"
	swaggerFiles "github.com/swaggo/files"
	ginSwagger "github.com/swaggo/gin-swagger"
)

type Server struct {
	engine    *gin.Engine
	cfg       *config.Schema
	validator validation.Validation
	db        *sql.DB
	rds       rds.RedisDatabase
	kfk       kfk.KafkaConn
}

func NewServer(validator validation.Validation, db *sql.DB, rds rds.RedisDatabase, kfk kfk.KafkaConn) *Server {
	return &Server{
		engine:    gin.Default(),
		cfg:       config.GetConfig(),
		validator: validator,
		db:        db,
		rds:       rds,
		kfk:       kfk,
	}
}

func (s Server) Run() error {
	_ = s.engine.SetTrustedProxies(nil)

	token := token.NewTokenService(*s.cfg)

	// here cors for mobile project from ./dayhan/mobile for chrome,windows...
	s.engine.Use(cors.New(cors.Config{
		AllowOrigins:     []string{fmt.Sprintf("http://localhost:%v", s.cfg.ChromePort)},
		AllowMethods:     []string{"GET", "POST", "PUT", "DELETE", "OPTIONS"},
		AllowHeaders:     []string{"Origin", "Content-Type", "Accept", "Authorization", "verify_key"},
		ExposeHeaders:    []string{"Content-Length"},
		AllowCredentials: true,
		MaxAge:           12 * time.Hour,
	}))

	s.engine.Static("/path", "./path")

	if err := s.AuthRoutes(token); err != nil {
		log.Fatalf("AuthRoutes Error: %v", err)
	}

	if err := s.MapRoutes(token); err != nil {
		log.Fatalf("MapRoutes Error: %v", err)
	}

	s.engine.GET("/swagger/*any", ginSwagger.WrapHandler(swaggerFiles.Handler))
	s.engine.GET("/health", func(ctx *gin.Context) {
		ctx.JSON(http.StatusOK, nil)
	})

	logger.Info("Http server is listening on PORT: ", s.cfg.HttpPort)
	if err := s.engine.Run(fmt.Sprintf("%s:%d", s.cfg.Host, s.cfg.HttpPort)); err != nil {
		log.Fatalf("Running Http server: %v", err)
	}

	return nil
}

func (s Server) GetEngine() *gin.Engine {
	return s.engine
}

func (s Server) AuthRoutes(token token.TokenService) error {
	authRoutes.Routes(s.engine, s.db, &s.validator, s.rds, token)
	return nil
}

func (s Server) MapRoutes(token token.TokenService) error {
	api := s.engine.Group("/api")
	v1 := api.Group("/v1")
	v1.Use(middleware.UserMiddleware(token))
	productRoutes.Routes(v1, s.db, &s.validator, *s.cfg, s.kfk)
	return nil
}
