package model

import "time"

type Video struct {
	ID        int64     `json:"id"`
	ProductId int64     `json:"product_id"`
	URL       string    `json:"url"`
	CreatedAt time.Time `json:"created_at"`
	UpdatedAt time.Time `json:"updated_at"`
}
