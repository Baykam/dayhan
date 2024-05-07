package utils

import (
	"github.com/google/uuid"
)

func GenerateUserID() string {
	id, err := uuid.NewRandom()
	if err != nil {
		return ""
	}
	return id.String()
}
