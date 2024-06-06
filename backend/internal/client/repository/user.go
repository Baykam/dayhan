package repository

import (
	"database/sql"
	"dayhan/internal/client/dto"
	"fmt"
)

type UserRepository struct {
	db *sql.DB
}

func NewUserRepository(db *sql.DB) UserRepositoryInterface {
	return &UserRepository{
		db: db,
	}
}

type UserRepositoryInterface interface {
	GetUserByUserID(userId string) (*dto.User, error)
}

func (r *UserRepository) GetUserByUserID(userId string) (*dto.User, error) {
	var user dto.User
	query := fmt.Sprintf(`SELECT * FROM users WHERE user_id = '%s'`, userId)
	row := r.db.QueryRow(query)
	err := row.Scan(
		&user.ID,
		&user.UserID,
		&user.Name,
		&user.Supplier,
		&user.Phone,
		&user.Email,
		&user.Location,
		&user.CreatedAt,
		&user.UpdatedAt,
	)
	if err == sql.ErrNoRows || err != nil {
		return nil, err
	}
	return &user, nil
}
