package grpcPort

import (
	"database/sql"
	d "dayhan/proto"

	"google.golang.org/grpc"
)

func RegisterHandlers(svr *grpc.Server, db *sql.DB) {
	productHandler := NewProductHandlers()
	d.RegisterDayhanGrpcServer(svr, productHandler)
}
