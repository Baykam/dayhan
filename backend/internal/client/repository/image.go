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
	CreateImage(productId int64, imagePath string) (int64, error)
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

func (r *ImageRepository) CreateImage(productId int64, imagePath string) (int64, error) {
	query := `INSERT INTO images(url, product_id) VALUES ($1, $2) RETURNING id`
	stmt, err := r.db.Prepare(query)
	if err != nil {
		return 0, err
	}
	defer stmt.Close()

	var createdProductID int64

	err = stmt.QueryRow(imagePath, productId).Scan(&createdProductID) // Execute and scan the ID
	if err != nil {
		return 0, err
	}

	return createdProductID, nil
}
