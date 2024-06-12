package dto

import "time"

type ProductRes struct {
	Id          int        `json:"id"`
	Name        string     `json:"name"`
	Description string     `json:"description"`
	Price       float64    `json:"price"`
	UpdatedAt   time.Time  `json:"updated_at"`
	Images      []ImageRes `json:"images"`
	Videos      []VideoRes `json:"videos"`
}

type ProductCreateReq struct {
	CategoriesList *[]int64  `json:"categories"`
	Name           *string   `json:"name"`
	Description    *string   `json:"description"`
	Price          *string   `json:"price"`
	Images         *[]string `json:"images"`
	Rate           *float64  `json:"rate"`
	Videos         *[]string `json:"videos"`
}

type ProductCreateResponse struct {
	Title            string    `json:"title"`
	Description      string    `json:"description"`
	CategoryID       []int64   `json:"category_id"`
	Price            float64   `json:"price"`
	Name             string    `json:"name"`
	MinOrderQuantity int64     `json:"min_order_quantity"`
	Rate             float64   `json:"rate"`
	Images           []string  `json:"images"`
	Videos           []string  `json:"videos"`
	UpdatedAt        time.Time `json:"updated_at"`
}

type ProductCreateRequest struct {
	Title            *string     `json:"title"`
	Description      *string     `json:"description"`
	CategoryID       *[]int64    `json:"category_id"`
	Price            *float64    `json:"price"`
	UserID           *int64      `json:"user_id"`
	Name             *string     `json:"name"`
	MinOrderQuantity *int64      `json:"min_order_quantity"`
	Rate             *float64    `json:"rate"`
	Images           *[]ImageReq `json:"images"`
	Videos           *[]VideoReq `json:"videos"`
}
