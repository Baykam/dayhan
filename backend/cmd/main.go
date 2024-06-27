package main

import (
	_ "dayhan/cmd/docs"
	"dayhan/internal/packages/config"
	"dayhan/internal/packages/db"
	productKafka "dayhan/internal/packages/kafka"
	rds "dayhan/internal/packages/redis"
	grpcServer "dayhan/internal/server/grpc"
	server "dayhan/internal/server/http"

	"github.com/quangdangfit/gocommon/logger"
	"github.com/quangdangfit/gocommon/validation"
)

// @title Tag Service API
// @version 1.0
// @description A Tag service API in GO using gin framework

// @host 192.168.1.184:9999
// @BasePath  /api
func main() {
	cfg := config.LoadConfig()
	logger.Initialize(cfg.Environment)

	dB, err := db.NewDatabase(cfg.DbUrl)
	if err != nil {
		logger.Errorf("error when database connect, error: %v", err)
	}
	defer dB.Close()
	if err != nil {
		logger.Errorf("error when create tables: %v", err)
	}

	validator := validation.New()

	rds, err := rds.LoadRedis(cfg)
	if err != nil {
		logger.Errorf("error when redis connect, error: %v", err)
	}
	defer rds.Redis.Close()

	kafka, err := productKafka.InitKafka(*cfg)
	if err != nil {
		logger.Errorf("error when kafka connect, error: %v", err)
	}
	defer kafka.Conn.Close()

	httpServer := server.NewServer(validator, dB, *rds, *kafka)
	if err := httpServer.Run(); err != nil {
		logger.Fatal(err)
	}

	go func() {
		grpc := grpcServer.NewGrpcServer(cfg, validator, dB, *rds, *kafka)
		if err := grpc.Run(); err != nil {
			logger.Fatal(err)
		}
	}()
}
