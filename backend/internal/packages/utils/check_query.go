package utils

import (
	defaa "dayhan/internal/packages/default"

	"github.com/gin-gonic/gin"
)

// 1. [Limit] 2.[Offset]
func GetLimitOffset(c *gin.Context) (string, string, error) {
	limit, ok := c.GetQuery("limit")
	if !ok {
		return "", "", defaa.ErrLimit
	}
	offset, ok := c.GetQuery("offset")
	if !ok {
		return "", "", defaa.ErrOffset
	}

	return limit, offset, nil
}
