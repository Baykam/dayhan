package http

import (
	"database/sql"
	"dayhan/internal/auth/service/token"
	rds "dayhan/internal/packages/redis"

	"github.com/gin-gonic/gin"
	"github.com/quangdangfit/gocommon/validation"
)

func Routes(r *gin.RouterGroup, db *sql.DB, validator *validation.Validation, rds rds.RedisDatabase, token token.TokenService) {

	port := NewPort(rds, token)

	routes := r.Group("/auth")

	{
		routes.POST("", port.PostAuthUser)
		routes.POST("/token", port.PostToken)
	}
}
