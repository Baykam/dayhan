package utils

import "github.com/gin-gonic/gin"

func Response(c *gin.Context, code int, data any) {
	c.JSON(code, data)
}

func Error(c *gin.Context, code int, message string) {
	c.JSON(code, gin.H{"error": message})
	c.Abort()
}
