package dto

type ProductRes struct {
	Id          *int       `json:"id"`
	Name        *string    `json:"name"`
	Description *string    `json:"description"`
	Price       *float64   `json:"price"`
	Images      []ImageRes `json:"images"`
}

type ProductCreateReq struct {
	Name        *string `json:"name"`
	Description *string `json:"description"`
	Price       *string `json:"price"`
	UserId      *string `json:"user_id"`
}
