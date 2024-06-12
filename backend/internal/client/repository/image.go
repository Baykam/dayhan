package repository

import (
	"database/sql"
	"dayhan/internal/client/dto"
	"dayhan/internal/packages/config"
	"fmt"
)

type ImageRepository struct {
	db  *sql.DB
	cfg config.Schema
}

func NewImageRepository(db *sql.DB, cfg config.Schema) ImageRepositoryInterface {
	return &ImageRepository{
		db:  db,
		cfg: cfg,
	}
}

type ImageRepositoryInterface interface {
	GetImageList(productId int64) (*[]dto.ImageRes, error)
	CreateImage(productId int64, imagePath string) (int64, error)
	DeleteImageByProductId(productId int64) error
}

func (r *ImageRepository) GetImageList(productId int64) (*[]dto.ImageRes, error) {
	var products []dto.ImageRes

	rows, err := r.db.Query(`SELECT url FROM images WHERE product_id = $1`, productId)
	if err != nil {
		return nil, err
	}

	for rows.Next() {
		var pp dto.ImageRes
		if err := rows.Scan(&pp.URL); err != nil {
			return nil, err
		}
		image := fmt.Sprintf("http://%s:%v/%s", r.cfg.Host, r.cfg.HttpPort, pp.URL)
		products = append(products, dto.ImageRes{URL: image})
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

	err = stmt.QueryRow(imagePath, productId).Scan(&createdProductID)
	if err != nil {
		return 0, err
	}

	return createdProductID, nil
}

func (r *ImageRepository) DeleteImageByProductId(productId int64) error {
	query := fmt.Sprintf(`DELETE FROM images WHERE product_id = '%v'`, productId)
	_, err := r.db.Exec(query)
	if err != nil {
		return err
	}
	return nil
}
