package main

import (
	"dayhan/internal/packages/config"
	"dayhan/internal/packages/db"
	rds "dayhan/internal/packages/redis"
	server "dayhan/internal/server/http"

	"github.com/quangdangfit/gocommon/logger"
	"github.com/quangdangfit/gocommon/validation"
)

func main() {
	cfg := config.LoadConfig()
	logger.Initialize(cfg.Environment)

	db, err := db.NewDatabase(cfg.DbUrl)
	if err != nil {
		logger.Errorf("error when database connect, error: %v", err)
	}
	defer db.Close()

	validator := validation.New()

	rds, err := rds.LoadRedis(cfg)
	if err != nil {
		logger.Errorf("error when redis connect, error: %v", err)
	}

	httpServer := server.NewServer(validator, db, *rds)
	if err := httpServer.Run(); err != nil {
		logger.Fatal(err)
	}
}
