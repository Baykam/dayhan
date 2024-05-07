package server

import (
	"database/sql"
	authRoutes "dayhan/internal/auth/port/http"
	"dayhan/internal/auth/service/token"
	"dayhan/internal/middleware"
	"dayhan/internal/packages/config"
	rds "dayhan/internal/packages/redis"
	"fmt"
	"log"
	"net/http"

	"github.com/gin-gonic/gin"
	"github.com/quangdangfit/gocommon/logger"
	"github.com/quangdangfit/gocommon/validation"
)

type Server struct {
	engine    *gin.Engine
	cfg       *config.Schema
	validator validation.Validation
	db        *sql.DB
	rds       rds.RedisDatabase
}

func NewServer(validator validation.Validation, db *sql.DB, rds rds.RedisDatabase) *Server {
	return &Server{
		engine:    gin.Default(),
		cfg:       config.GetConfig(),
		validator: validator,
		db:        db,
		rds:       rds,
	}
}

func (s Server) Run() error {
	_ = s.engine.SetTrustedProxies(nil)

	token := token.NewTokenService(*s.cfg)

	if err := s.AuthRoutes(token); err != nil {
		log.Fatalf("AuthRoutes Error: %v", err)
	}

	if err := s.MapRoutes(token); err != nil {
		log.Fatalf("MapRoutes Error: %v", err)
	}

	// s.engine.GET("/swagger/*any", ginSwagger.WrapHandler(swaggerFiles.Handler))
	s.engine.GET("/health", func(ctx *gin.Context) {
		ctx.JSON(http.StatusOK, nil)
	})

	logger.Info("Http server is listening on PORT: ", s.cfg.HttpPort)
	if err := s.engine.Run(fmt.Sprintf(":%d", s.cfg.HttpPort)); err != nil {
		log.Fatalf("Running Http server: %v", err)
	}

	return nil
}

func (s Server) GetEngine() *gin.Engine {
	return s.engine
}

func (s Server) AuthRoutes(token token.TokenService) error {
	auth := s.engine.Group("/auth")
	authRoutes.Routes(auth, s.db, &s.validator, s.rds, token)
	return nil
}

func (s Server) MapRoutes(token token.TokenService) error {
	v1 := s.engine.Group("/api/v1")
	v1.Use(middleware.TokenAuthMiddleware(token))
	return nil
}
