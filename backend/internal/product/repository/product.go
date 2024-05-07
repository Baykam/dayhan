package repository

import (
	"database/sql"
	"dayhan/internal/packages/config"
)

type Repository struct {
	cfg config.Schema
	db  sql.DB
}

func NewRepository(cfg config.Schema) *Repository {
	return &Repository{
		cfg: cfg,
	}
}

// func (r *Repository) GetProductList() []model.Product {
// 	query := fmt.Sprintf(`SELECT * FROM product`)

// 	data := r.db.QueryRow(query)

// }
