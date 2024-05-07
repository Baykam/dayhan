package http

import (
	"dayhan/internal/auth/dto"
	"dayhan/internal/auth/service/token"
	defaa "dayhan/internal/packages/default"
	rds "dayhan/internal/packages/redis"
	"dayhan/internal/packages/statics"
	"dayhan/internal/packages/utils"
	"fmt"
	"net/http"
	"time"

	"github.com/gin-gonic/gin"
)

type Port struct {
	rds   rds.RedisDatabase
	token token.TokenService
}

func NewPort(rds rds.RedisDatabase, token token.TokenService) *Port {
	return &Port{
		rds:   rds,
		token: token,
	}
}

func (p Port) PostAuthUser(c *gin.Context) {
	var req dto.PhonePostReq
	if err := c.BindJSON(&req); err != nil {
		utils.Error(c, 400, defaa.ErrInvalidRequest.Error())
		return
	}

	if req.Phone == "" {
		utils.Error(c, 400, "Phone number is required")
		return
	}

	verifyKey, err := utils.GenerateRandomString(8)
	if err != nil {
		utils.Error(c, 500, "Failed to generate VerifyKey")
		return
	}
	userID := utils.GenerateUserID()

	phone_number, user_id := statics.GetRedisKeys(verifyKey)

	p.rds.Redis.Set(c, phone_number, req.Phone, time.Minute*3)
	p.rds.Redis.Set(c, user_id, userID, time.Minute*3)

	res := dto.PhonePostRes{
		VerifyKey: verifyKey,
		// UserID:    userID,
	}

	c.JSON(http.StatusOK, res)
}

func (p Port) PostToken(c *gin.Context) {
	var req dto.TokenPostReq
	if err := c.BindJSON(&req); err != nil {
		utils.Error(c, 400, defaa.ErrInvalidRequest.Error())
		return
	}

	header := c.GetHeader(defaa.HeaderUserId)

	phone_number, user_id := statics.GetRedisKeys(req.VerifyKey)

	cmdP := p.rds.Redis.Get(c, phone_number)
	cmdU := p.rds.Redis.Get(c, user_id)

	if req.SMS != "123456" && header != cmdU.Val() {
		utils.Error(c, 404, defaa.ErrInvalidData.Error())
		return
	}
	fmt.Println(cmdP.Val())

	userId := utils.GenerateUserID()

	accessToken, err := p.token.GenerateToken(token.GenerateTokenRequest{
		UserID:   userId,
		UsedFor:  token.User,
		ExpireAt: time.Now(),
	})
	if err != nil {
		utils.Error(c, 404, "cannot generate access token")
		return
	}

	refreshToken, err := p.token.GenerateToken(
		token.GenerateTokenRequest{
			UserID:   userId,
			UsedFor:  token.User,
			ExpireAt: time.Now(),
		})
	if err != nil {
		utils.Error(c, 404, "cannot generate refresh token")
		return
	}
	response := &dto.TokenPostRes{
		AccessToken:  accessToken.TokenString,
		RefreshToken: refreshToken.TokenString,
	}

	c.JSON(200, response)
}
