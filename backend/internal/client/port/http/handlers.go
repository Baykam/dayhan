package http

import (
	"database/sql"
	"dayhan/internal/client/dto"
	"dayhan/internal/client/service"
	defaa "dayhan/internal/packages/default"
	"dayhan/internal/packages/utils"
	"strconv"

	"github.com/gin-gonic/gin"
	"github.com/quangdangfit/gocommon/validation"
)

type HttpPort struct {
	db        *sql.DB
	validator validation.Validation
	service   service.ProductServiceInterface
}

func NewHttpPost(db *sql.DB, validator validation.Validation,
	service service.ProductServiceInterface) *HttpPort {
	return &HttpPort{
		db:        db,
		validator: validator,
		service:   service,
	}
}

func (h *HttpPort) GetProductList(c *gin.Context) {
	u := c.GetString(defaa.SetUserId)
	if u == "" {
		utils.Error(c, 401, defaa.ErrUnAuthorized.Error())
		return
	}
	var products *[]dto.ProductRes
	query := c.Query("search")

	if query == "" {
		res, err := h.service.GetProductList()
		if err != nil {
			utils.Error(c, 400, err.Error())
			return
		}
		products = res
	} else {
		res, err := h.service.SearchByName(query, u)
		if err != nil {
			utils.Error(c, 400, err.Error())
			return
		}
		products = res
	}

	utils.Response(c, 200, products)
}

func (h *HttpPort) PostCreateProduct(c *gin.Context) {
	userID := c.GetString(defaa.SetUserId)
	var req dto.ProductCreateRequest
	err := c.BindJSON(&req)
	if err != nil || userID == "" {
		utils.Error(c, 400, defaa.ErrInvalidData.Error())
		return
	}
	product, err := h.service.CreateProduct(&req, userID)
	if err != nil {
		utils.Error(c, 400, err.Error())
		return
	}

	utils.Response(c, 201, product)
}

func (h *HttpPort) GetProductById(c *gin.Context) {
	userId := c.GetString(defaa.SetUserId)
	id := c.Param("id")
	if id == "" {
		utils.Error(c, 400, defaa.ErrBadRequest.Error())
		return
	}
	pId, err := strconv.Atoi(id)
	if err != nil {
		utils.Error(c, 400, defaa.ErrBadRequest.Error())
		return
	}

	product, err := h.service.GetProductById(userId, int64(pId))
	if err != nil {
		utils.Error(c, 400, err.Error())
		return
	}
	utils.Response(c, 200, product)
}

func (h *HttpPort) DeleteProduct(c *gin.Context) {
	userId := c.GetString(defaa.SetUserId)
	productId := c.Query("id")

	pId, err := strconv.Atoi(productId)
	if err != nil {
		utils.Error(c, 400, defaa.ErrBadRequest.Error())
		return
	}

	err = h.service.DeleteProductById(userId, int64(pId))
	if err != nil {
		utils.Error(c, 400, err.Error())
		return
	}
	utils.Response(c, 200, defaa.DataHasDeleted)
}

func (h *HttpPort) UpdateProductById(c *gin.Context) {
	userId := c.GetString(defaa.SetUserId)
	productId := c.Param("id")

	pId, err := strconv.Atoi(productId)
	if err != nil {
		utils.Error(c, 400, defaa.ErrBadRequest.Error())
		return
	}
	var req dto.ProductCreateReq
	err = c.BindJSON(&req)
	if err != nil {
		utils.Error(c, 400, defaa.ErrInvalidData.Error())
		return
	}

	result, err := h.service.UpdateProductById(userId, int64(pId), req)
	if err != nil {
		utils.Error(c, 400, defaa.ErrInvalidData.Error())
		return
	}

	utils.Response(c, 200, result)
}
