package http

import (
	"database/sql"
	"dayhan/internal/product/repository"
	"dayhan/internal/product/service"

	"github.com/gin-gonic/gin"
	"github.com/quangdangfit/gocommon/validation"
)

func Routes(r *gin.RouterGroup, db *sql.DB, validator *validation.Validation) {
	repo := repository.NewRepository(db)
	service := service.NewProductService(repo)

	port := NewHttpPost(db, *validator, service)

	routes := r.Group("/product")
	{
		routes.GET("", port.GetProductList)
		routes.GET("/search", port.SearchByName)
		routes.POST("", port.PostCreateProduct)
		routes.GET("/:id", port.GetProductById)
		routes.POST("/:id", port.UpdateProductById)
		routes.DELETE("/:id", port.DeleteProduct)
	}
}
