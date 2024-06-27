package grpcServer

import (
	"database/sql"
	"dayhan/internal/auth/service/token"
	grpcPort "dayhan/internal/client/port/grpc"
	"dayhan/internal/middleware"
	"dayhan/internal/packages/config"
	kfk "dayhan/internal/packages/kafka"
	rds "dayhan/internal/packages/redis"
	"fmt"
	"net"

	"github.com/quangdangfit/gocommon/logger"
	"github.com/quangdangfit/gocommon/validation"
	"google.golang.org/grpc"
	"google.golang.org/grpc/reflection"
)

type GrpcServer struct {
	engine    *grpc.Server
	cfg       *config.Schema
	validator validation.Validation
	db        *sql.DB
	rds       rds.RedisDatabase
	kfk       kfk.KafkaConn
}

func NewGrpcServer(cfg *config.Schema, validator validation.Validation, db *sql.DB,
	rds rds.RedisDatabase, kfk kfk.KafkaConn) *GrpcServer {
	token := token.NewTokenService(*cfg)
	engine := grpc.NewServer(
		grpc.ChainStreamInterceptor(middleware.StreamAuthInterceptor(token)),
		grpc.ChainUnaryInterceptor(middleware.UnaryAuthInterceptor(token)),
	)
	return &GrpcServer{
		engine:    engine,
		validator: validator,
		cfg:       cfg,
		db:        db,
		rds:       rds,
		kfk:       kfk,
	}
}

func (s *GrpcServer) Run() error {
	grpcPort.RegisterHandlers(s.engine, s.db, *s.cfg, s.kfk)

	reflection.Register(s.engine)
	lis, err := net.Listen("tcp", fmt.Sprintf(":%d", s.cfg.GrpcPort))
	logger.Info("GRPC server is listening on PORT: ", s.cfg.GrpcPort)
	if err != nil {
		logger.Error("Failed to listen: ", err)
		return err
	}
	err = s.engine.Serve(lis)
	if err != nil {
		logger.Fatal("Failed to serve grpc: ", err)
		return err
	}
	return nil
}
