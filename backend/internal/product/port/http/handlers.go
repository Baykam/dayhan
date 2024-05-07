package http

import (
	"database/sql"

	"github.com/gin-gonic/gin"
	"github.com/quangdangfit/gocommon/validation"
)

type HttpPort struct {
	db        *sql.DB
	validator validation.Validation
}

func NewHttpPost(db *sql.DB, validator validation.Validation) *HttpPort {
	return &HttpPort{
		db:        db,
		validator: validator,
	}
}

func (h HttpPort) GetProductList(c *gin.Context) {

}
