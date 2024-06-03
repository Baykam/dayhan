package repository

import (
	"database/sql"
	"dayhan/internal/client/dto"
)

type ImageRepository struct {
	db *sql.DB
}

func NewImageRepository(db *sql.DB) ImageRepositoryInterface {
	return &ImageRepository{
		db: db,
	}
}

type ImageRepositoryInterface interface {
	GetImageList(productId int64) (*[]dto.ImageRes, error)
}

func (r *ImageRepository) GetImageList(productId int64) (*[]dto.ImageRes, error) {
	var products []dto.ImageRes

	rows, err := r.db.Query(`SELECT url FROM images WHERE product_id = %v`, productId)
	if err != nil {
		return nil, err
	}

	for rows.Next() {
		var pp dto.ImageRes
		if err := rows.Scan(&pp.URL); err != nil {
			return nil, err
		}
		products = append(products, pp)
	}
	return &products, nil
}
