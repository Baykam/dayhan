package model

import "time"

type Order struct {
	Id         int64     `json:"id"`
	CustomerId int64     `json:"customer_id"`
	CreatedAt  time.Time `json:"created_at"`
	UpdatedAt  time.Time `json:"updated_at"`
}
