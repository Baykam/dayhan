package http

import (
	"dayhan/internal/auth/dto"
	"dayhan/internal/auth/service/service"
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
	rds     rds.RedisDatabase
	token   token.TokenService
	service service.AuthServiceInterface
}

func NewPort(rds rds.RedisDatabase, token token.TokenService, service service.AuthServiceInterface) *Port {
	return &Port{
		rds:     rds,
		token:   token,
		service: service,
	}
}

// CreateTags      godoc
// @Summary        Create Tags
// @Description    Post phone number get verification_key and sms
// @Param          tags body dto.PhonePostReq true "Post phone"
// @Produce        application/json
// @Tags           tags
// @Success        200 {object} response.Response
// @Router         /tags [post]
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

	p.rds.Redis.Set(c, phone_number, req.Phone, time.Minute*50)
	p.rds.Redis.Set(c, user_id, userID, time.Minute*50)

	res := dto.PhonePostRes{
		VerifyKey: verifyKey,
		UserID:    userID,
	}

	c.JSON(http.StatusCreated, res)
}

func (p Port) PostToken(c *gin.Context) {
	var req dto.TokenPostReq
	if err := c.BindJSON(&req); err != nil {
		utils.Error(c, 400, defaa.ErrInvalidRequest.Error())
		return
	}

	phone_number, user_id := statics.GetRedisKeys(req.VerifyKey)

	cmdP := p.rds.Redis.Get(c, phone_number)
	cmdU := p.rds.Redis.Get(c, user_id)

	if req.SMS != "123456" || req.UserId != cmdU.Val() {
		utils.Error(c, 404, defaa.ErrInvalidData.Error())
		return
	}
	fmt.Println(cmdP.Val())

	userId := utils.GenerateUserID()

	accessToken, err := p.token.GenerateToken(token.GenerateTokenRequest{
		UserID:   userId,
		UsedFor:  token.User,
		ExpireAt: time.Now().Add(defaa.AccessTokenTime),
	})
	if err != nil {
		utils.Error(c, 404, "cannot generate access token")
		return
	}

	refreshToken, err := p.token.GenerateToken(
		token.GenerateTokenRequest{
			UserID:   userId,
			UsedFor:  token.User,
			ExpireAt: time.Now().Add(defaa.RefreshTokenTime),
		})
	if err != nil {
		utils.Error(c, 404, "cannot generate refresh token")
		return
	}
	err = p.service.SaveUser(userId, cmdP.Val())
	if err != nil {
		utils.Error(c, 400, defaa.ErrInvalidRequest.Error())
		return
	}
	response := &dto.TokenPostRes{
		AccessToken:  accessToken.TokenString,
		RefreshToken: refreshToken.TokenString,
	}

	c.JSON(http.StatusCreated, response)
}

func (p *Port) TokenRefresh(c *gin.Context) {
	var req dto.RefreshTokenReq
	accessTT := c.GetHeader(defaa.Authorization)
	if accessTT == "" {
		utils.Error(c, 400, defaa.ErrInvalidData.Error())
		return
	}

	err := c.BindJSON(&req)
	if err != nil {
		utils.Error(c, 400, defaa.ErrInvalidUser.Error())
		return
	}

	// here verify tokens

	refresh, err := p.token.VerifyToken(token.VerifyTokenRequest{
		TokenString: req.RefreshToken,
		UsedFor:     token.User,
	})
	if err != nil || refresh.UserID == "" {
		utils.Error(c, 401, err.Error())
		return
	}

	// get user id from db and create new access token
	userIdFromDb, err := p.service.RefreshAccessUserId(refresh.UserID)
	if err != nil {
		utils.Error(c, 401, defaa.ErrExpiredToken.Error())
		return
	}
	newAccess, err := p.token.GenerateToken(token.GenerateTokenRequest{
		UserID:   userIdFromDb,
		UsedFor:  token.User,
		ExpireAt: time.Now().Add(defaa.AccessTokenTime),
	})
	if err != nil {
		utils.Error(c, 500, defaa.ErrBadRequest.Error())
		return
	}

	//
	res := dto.RefreshTokenRes{
		AccessToken: newAccess.TokenString,
	}

	c.JSON(200, res)
}
