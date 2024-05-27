package http

import (
	"database/sql"
	"dayhan/internal/auth/repository"
	"dayhan/internal/auth/service/service"
	"dayhan/internal/auth/service/token"
	rds "dayhan/internal/packages/redis"

	"github.com/gin-gonic/gin"
	"github.com/quangdangfit/gocommon/validation"
)

func Routes(r *gin.RouterGroup, db *sql.DB, validator *validation.Validation, rds rds.RedisDatabase, token token.TokenService) {
	database := repository.NewRepository(db)
	service := service.NewAuthService(database)

	port := NewPort(rds, token, service)

	{
		r.POST("", port.PostAuthUser)
		r.POST("/token", port.PostToken)
		r.POST("/refresh_token", port.TokenRefresh)
	}
}
