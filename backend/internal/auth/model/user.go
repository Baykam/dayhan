package model

import "time"

type User struct {
	ID           int       `json:"id"`
	Email        string    `json:"email"`
	RefreshToken string    `json:"refresh_token"`
	Phone        string    `json:"phone"`
	UserID       string    `json:"user_id"`
	CreatedAt    time.Time `json:"created_at"`
	UpdatedAt    time.Time `json:"updated_at"`
	DeletedAt    time.Time `json:"deleted_at"`
}
