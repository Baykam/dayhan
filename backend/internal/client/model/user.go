package model

import "time"

type User struct {
	ID   int64  `json:"id"`
	Name string `json:"name"`
	// (manufacturer == 1 or supplier == 2),
	Supplier  int64     `json:"supplier"`
	Phone     string    `json:"phone"`
	Email     string    `json:"email"`
	Location  string    `json:"location"`
	CreatedAt time.Time `json:"created_at"`
	UpdatedAt time.Time `json:"updated_at"`
	UserID    string    `json:"user_id"`
}
