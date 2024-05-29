package main

import (
	_ "dayhan/cmd/docs"
	"dayhan/internal/packages/config"
	"dayhan/internal/packages/db"
	rds "dayhan/internal/packages/redis"
	server "dayhan/internal/server/http"

	"github.com/quangdangfit/gocommon/logger"
	"github.com/quangdangfit/gocommon/validation"
)

// @title Tag Service API
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

	httpServer := server.NewServer(validator, dB, *rds)
	if err := httpServer.Run(); err != nil {
		logger.Fatal(err)
	}
}
