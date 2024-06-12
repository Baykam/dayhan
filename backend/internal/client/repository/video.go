package repository

import (
	"database/sql"
	"dayhan/internal/client/dto"
	"dayhan/internal/packages/config"
	"fmt"
)

type VideoRepository struct {
	db  *sql.DB
	cfg config.Schema
}

func NewVideoRepository(db *sql.DB, cfg config.Schema) VideoRepositoryInterface {
	return &VideoRepository{
		db:  db,
		cfg: cfg,
	}
}

type VideoRepositoryInterface interface {
	GetVideoList(productId int64) (*[]dto.VideoRes, error)
	CreateVideo(productId int64, imagePath string) (int64, error)
}

func (r *VideoRepository) GetVideoList(productId int64) (*[]dto.VideoRes, error) {
	var products []dto.VideoRes

	rows, err := r.db.Query(`SELECT url FROM videos WHERE product_id = $1`, productId)
	if err != nil {
		return nil, err
	}

	for rows.Next() {
		var pp dto.VideoRes
		if err := rows.Scan(&pp.URL); err != nil {
			return nil, err
		}
		image := fmt.Sprintf("http://%s:%v/%s", r.cfg.Host, r.cfg.HttpPort, pp.URL)
		products = append(products, dto.VideoRes{URL: image})
	}
	return &products, nil
}

func (r *VideoRepository) CreateVideo(productId int64, imagePath string) (int64, error) {
	query := `INSERT INTO videos(url, product_id) VALUES ($1, $2) RETURNING id`
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
