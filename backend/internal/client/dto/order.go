package dto

type Order struct {
	Id int64 `json:"id"`
	// customer id == user(id)
	CustomerId int64 `json:"customer_id"`
}
