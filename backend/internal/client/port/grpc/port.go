package grpcPort

import (
	"database/sql"
	"dayhan/internal/client/repository"
	"dayhan/internal/client/service"
	"dayhan/internal/packages/config"
	productKafka "dayhan/internal/packages/kafka"
	d "dayhan/proto/generated"

	"google.golang.org/grpc"
)

func RegisterHandlers(svr *grpc.Server, db *sql.DB, cfg config.Schema, kafka productKafka.KafkaConn) {
	repo := repository.NewRepository(db)
	imageRepo := repository.NewImageRepository(db, cfg)
	userRepo := repository.NewUserRepository(db)
	videoRepo := repository.NewVideoRepository(db, cfg)
	service := service.NewProductService(repo, imageRepo, userRepo, videoRepo, kafka)
	productHandler := NewProductHandlers(service)
	d.RegisterDayhanGrpcServer(svr, productHandler)
}
