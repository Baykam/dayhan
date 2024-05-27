package repository

import (
	"database/sql"
	"dayhan/internal/product/dto"
	"dayhan/internal/product/model"
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
	GetUserByUserID(userId string) (*model.User, error)
	CreateProduct(req *dto.ProductCreateReq, userId int64) (int64, error)
	GetProductById(id, userId int64) (*dto.ProductRes, error)
	GetProductByIdFullModel(id int64) (*model.Product, error)
	DeleteProductById(id int64, userId int64) error
	UpdateProductById(id int64, req dto.ProductCreateReq) (int64, error)
}

func (r *Repository) GetProductList() (*[]dto.ProductRes, error) {
	var products []dto.ProductRes

	rows, err := r.db.Query(`SELECT id, name, description, price FROM product`)
	if err != nil {
		return nil, err
	}

	for rows.Next() {
		var pp dto.ProductRes
		if err := rows.Scan(&pp.Id, &pp.Name, &pp.Description, &pp.Price); err != nil {
			return nil, err
		}
		products = append(products, pp)
	}
	return &products, nil
}

func (r *Repository) SearchByName(query string) (*[]dto.ProductRes, error) {
	var products []dto.ProductRes
	q := fmt.Sprintf(`SELECT id, name, description, price FROM product WHERE name = '%s'`, query)
	rows, err := r.db.Query(q)
	if err != nil {
		return nil, err
	}

	for rows.Next() {
		var pp dto.ProductRes
		if err := rows.Scan(&pp.Id, &pp.Name, &pp.Description, &pp.Price); err != nil {
			return nil, err
		}
		products = append(products, pp)
	}
	return &products, nil
}

func (r *Repository) GetProductById(id, userId int64) (*dto.ProductRes, error) {
	var p dto.ProductRes
	query := fmt.Sprintf(`SELECT id,name,description, price FROM product WHERE id = '%v' AND user_id = '%v'`, id, userId)
	row := r.db.QueryRow(query)
	err := row.Scan(&p.Id, &p.Name, &p.Description, &p.Price)
	if err != nil {
		return nil, err
	}
	return &p, nil
}

func (r *Repository) GetUserByUserID(userId string) (*model.User, error) {
	var user model.User
	query := fmt.Sprintf(`SELECT * FROM users WHERE user_id = '%s'`, userId)
	row := r.db.QueryRow(query)
	err := row.Scan(&user.ID, &user.CreatedAt, &user.UpdatedAt, &user.Email, &user.UserID, &user.Phone)
	if err == sql.ErrNoRows || err != nil || userId != user.UserID {
		return nil, err
	}
	return &user, nil
}

func (r *Repository) CreateProduct(req *dto.ProductCreateReq, userId int64) (int64, error) {
	query := `INSERT INTO product(name, description, price, user_id) VALUES ($1, $2, $3, $4) RETURNING id`
	stmt, err := r.db.Prepare(query)
	if err != nil {
		return 0, err
	}
	defer stmt.Close()

	var createdProductID int64

	err = stmt.QueryRow(req.Name, req.Description, req.Price, userId).Scan(&createdProductID) // Execute and scan the ID
	if err != nil {
		return 0, err
	}

	return createdProductID, nil
}

func (r *Repository) GetProductByIdFullModel(id int64) (*model.Product, error) {
	var product model.Product
	query := fmt.Sprintf(`SELECT * FROM product WHERE id = '%v'`, id)
	row := r.db.QueryRow(query)
	if err := row.Scan(&product.ID, &product.CreatedAt, &product.DeletedAt, &product.Description,
		&product.Name, &product.Price, &product.UpdatedAt, &product.UserID); err != nil {
		return nil, err
	}
	return &product, nil
}

func (r *Repository) DeleteProductById(id int64, userId int64) error {
	query := fmt.Sprintf(`DELETE FROM product WHERE id = '%v', user_id = '%v'`, id, userId)
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
