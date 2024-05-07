package http

import (
	"database/sql"

	"github.com/gin-gonic/gin"
	"github.com/quangdangfit/gocommon/validation"
)

func Routes(r *gin.RouterGroup, db *sql.DB, validator *validation.Validation) {
	port := NewHttpPost(db, *validator)

	routes := r.Group("/product")
	{
		routes.GET("", port.GetProductList)
	}
}
