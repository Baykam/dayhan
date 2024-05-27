package middleware

import (
	"dayhan/internal/auth/service/token"
	defaa "dayhan/internal/packages/default"
	"dayhan/internal/packages/utils"

	"github.com/gin-gonic/gin"
)

func UserMiddleware(tokenService token.TokenService) gin.HandlerFunc {
	return func(c *gin.Context) {
		tokenString := c.GetHeader(defaa.Authorization)

		verifyRequest := token.VerifyTokenRequest{
			TokenString: tokenString,
			UsedFor:     token.User,
		}

		response, err := tokenService.VerifyToken(verifyRequest)
		if err != nil {
			utils.Error(c, 401, err.Error())
			c.Abort()
			return
		}

		userId := response.UserID

		if userId == "" {
			utils.Error(c, 401, defaa.ErrInvalidToken.Error())
			c.Abort()
			return
		}

		c.Set(defaa.SetUserId, userId)

		c.Next()
	}
}
