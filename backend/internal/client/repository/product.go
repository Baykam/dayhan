package repository

import (
	"database/sql"
	"dayhan/internal/client/dto"
	"fmt"
)

type Repository struct {
	db *sql.DB
}

func NewRepository(db *sql.DB) RepositoryInterface {
	return &Repository{
		db: db,
	}
}

type RepositoryInterface interface {
	GetProductList() (*[]dto.ProductRes, error)
	SearchByName(query string) (*[]dto.ProductRes, error)
	CreateProduct(req *dto.ProductCreateRequest, userId int64) (int64, error)
	GetProductByIdAndUserId(id, userId int64) (*dto.ProductRes, error)
	DeleteProductById(id int64, userId int64) error
	UpdateProductById(id int64, req dto.ProductCreateReq) (int64, error)
	GetProductById(id int64) (*dto.ProductRes, error)
}

func (r *Repository) GetProductList() (*[]dto.ProductRes, error) {
	var products []dto.ProductRes
	rows, err := r.db.Query(`
	SELECT p.id, p.name, p.description, p.price, p.updated_at
	FROM product p
	ORDER BY p.updated_at
`)
	if err != nil {
		return nil, err
	}

	for rows.Next() {
		var (
			pp          dto.ProductRes
			name        sql.NullString
			description sql.NullString
			price       sql.NullFloat64
		)

		err := rows.Scan(&pp.Id, &name, &description, &price, &pp.UpdatedAt)
		if err != nil {
			return nil, err
		}

		pp.Name = name.String
		if !name.Valid {
			pp.Name = ""
		}
		pp.Description = description.String
		if !description.Valid {
			pp.Description = ""
		}
		pp.Price = price.Float64
		if !price.Valid {
			pp.Price = 0.0
		}

		products = append(products, pp)
	}
	return &products, nil
}

func (r *Repository) SearchByName(query string) (*[]dto.ProductRes, error) {
	var products []dto.ProductRes
	q := fmt.Sprintf(`SELECT id, name, description, price, updated_at FROM product WHERE name LIKE '%%%s%%'`, query)
	rows, err := r.db.Query(q)
	if err != nil {
		return nil, err
	}

	for rows.Next() {
		var pp dto.ProductRes
		if err := rows.Scan(&pp.Id, &pp.Name, &pp.Description, &pp.Price, &pp.UpdatedAt); err != nil {
			return nil, err
		}
		products = append(products, pp)
	}
	return &products, nil
}

func (r *Repository) GetProductByIdAndUserId(id, userId int64) (*dto.ProductRes, error) {
	var (
		p           dto.ProductRes
		name        sql.NullString
		description sql.NullString
		price       sql.NullFloat64
	)
	query := fmt.Sprintf(`
	SELECT id, name, description, price, updated_at 
    FROM product
    WHERE id = '%v' AND user_id = '%v'
    `, id, userId,
	)
	row := r.db.QueryRow(query)
	err := row.Scan(&p.Id, &name, &description, &price, &p.UpdatedAt)
	if err != nil {
		return nil, err
	}

	p.Name = name.String
	if !name.Valid {
		p.Name = ""
	}
	p.Description = description.String
	if !description.Valid {
		p.Description = ""
	}
	p.Price = price.Float64
	if !price.Valid {
		p.Price = 0.0
	}

	return &p, nil
}

func (r *Repository) GetProductById(id int64) (*dto.ProductRes, error) {
	var (
		p           dto.ProductRes
		name        sql.NullString
		description sql.NullString
		price       sql.NullFloat64
	)
	query := fmt.Sprintf(`
	SELECT id, name, description, price, updated_at 
    FROM product
    WHERE id = '%v'
    `, id,
	)
	row := r.db.QueryRow(query)
	err := row.Scan(&p.Id, &name, &description, &price, &p.UpdatedAt)
	if err != nil {
		return nil, err
	}

	p.Name = name.String
	if !name.Valid {
		p.Name = ""
	}
	p.Description = description.String
	if !description.Valid {
		p.Description = ""
	}
	p.Price = price.Float64
	if !price.Valid {
		p.Price = 0.0
	}

	return &p, nil
}

func (r *Repository) CreateProduct(req *dto.ProductCreateRequest, userId int64) (int64, error) {
	query := `INSERT INTO product(name, description, price, user_id) VALUES ($1, $2, $3, $4) RETURNING id`
	stmt, err := r.db.Prepare(query)
	if err != nil {
		return 0, err
	}
	defer stmt.Close()

	var createdProductID int64

	err = stmt.QueryRow(req.Name, req.Description, req.Price, userId).Scan(&createdProductID)
	if err != nil {
		return 0, err
	}

	return createdProductID, nil
}

func (r *Repository) DeleteProductById(id int64, userId int64) error {
	query := fmt.Sprintf(`DELETE FROM product WHERE id = '%v'`, id)
	_, err := r.db.Exec(query)
	if err != nil {
		return err
	}
	return nil
}

func (r *Repository) UpdateProductById(id int64, req dto.ProductCreateReq) (int64, error) {
	query := `UPDATE product SET name = $1, price = $2, description = $3 WHERE id = $4 RETURNING id`
	stmt, err := r.db.Prepare(query)
	if err != nil {
		return 0, err
	}
	var updatedId int64

	err = stmt.QueryRow(req.Name, req.Price, req.Description, id).Scan(&updatedId)
	if err != nil {
		return 0, err
	}

	return updatedId, nil
}
