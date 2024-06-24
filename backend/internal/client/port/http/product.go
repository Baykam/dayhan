package http

import (
	"database/sql"
	"dayhan/internal/client/repository"
	"dayhan/internal/client/service"
	"dayhan/internal/packages/config"
	productKafka "dayhan/internal/packages/kafka"

	"github.com/gin-gonic/gin"
	"github.com/quangdangfit/gocommon/validation"
)

func Routes(r *gin.RouterGroup, db *sql.DB, validator *validation.Validation, cfg config.Schema, kafka productKafka.KafkaConn) {
	repo := repository.NewRepository(db)
	imageRepo := repository.NewImageRepository(db, cfg)
	userRepo := repository.NewUserRepository(db)
	videoRepo := repository.NewVideoRepository(db, cfg)
	service := service.NewProductService(repo, imageRepo, userRepo, videoRepo, kafka)

	port := NewHttpPost(db, *validator, service)

	routes := r.Group("/product")
	{
		routes.GET("", port.GetProductList)
		routes.POST("", port.PostCreateProduct)
		routes.GET("/:id", port.GetProductById)
		routes.POST("/:id", port.UpdateProductById)
		routes.DELETE("/:id", port.DeleteProduct)
	}
}
