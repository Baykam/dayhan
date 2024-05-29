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

func Routes(r *gin.Engine, db *sql.DB, validator *validation.Validation, rds rds.RedisDatabase, token token.TokenService) {

	database := repository.NewRepository(db)
	service := service.NewAuthService(database)

	port := NewPort(rds, token, service)
	a := r.Group("auth")
	{
		a.POST("", port.PostAuthUser)
		a.POST("/token", port.PostToken)
		a.POST("/refresh_token", port.TokenRefresh)
	}
}
