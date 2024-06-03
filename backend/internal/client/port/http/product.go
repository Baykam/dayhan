package http

import (
	"database/sql"
	"dayhan/internal/client/repository"
	"dayhan/internal/client/service"

	"github.com/gin-gonic/gin"
	"github.com/quangdangfit/gocommon/validation"
)

func Routes(r *gin.RouterGroup, db *sql.DB, validator *validation.Validation) {
	repo := repository.NewRepository(db)
	imageRepo := repository.NewImageRepository(db)
	userRepo := repository.NewUserRepository(db)
	service := service.NewProductService(repo, imageRepo, userRepo)

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
