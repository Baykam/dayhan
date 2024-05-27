package repository

import (
	"database/sql"
	"dayhan/internal/auth/model"
	"fmt"
)

type Database struct {
	db *sql.DB
}

func NewRepository(db *sql.DB) AuthRepositoryInterface {
	return &Database{
		db: db,
	}
}

type AuthRepositoryInterface interface {
	CreateUser(userId, phone string) error
	GetUserByPhone(phone string) (*model.User, error)
	UpdateUserByID(id int64, newUserID string) error
	GetUserByUserId(userId string) (*model.User, error)
}

func (d *Database) CreateUser(userId, phone string) error {
	query := fmt.Sprintf(`INSERT INTO users(user_id,phone) VALUES ('%s','%s')`, userId, phone)
	_, err := d.db.Query(query)
	if err != nil {
		return err
	}
	return nil
}

func (d *Database) GetUserByPhone(phone string) (*model.User, error) {
	var user model.User
	query := `SELECT * FROM users WHERE phone = ?`
	row := d.db.QueryRow(query, phone)
	err := row.Scan(&user.ID, &user.CreatedAt, &user.UpdatedAt, &user.Email, &user.UserID, &user.Phone)
	if err == sql.ErrNoRows {
		return nil, nil
	}
	if err != nil {
		return nil, err
	}
	return &user, nil
}

func (d *Database) UpdateUserByID(id int64, newUserID string) error {
	query := `UPDATE users SET user_id = ? WHERE id = ?`
	_, err := d.db.Exec(query, newUserID, id)
	if err != nil {
		return err
	}
	return nil
}

func (d *Database) GetUserByUserId(userId string) (*model.User, error) {
	var user model.User
	query := `SELECT * FROM users WHERE user_id = ?`
	row := d.db.QueryRow(query, userId)
	err := row.Scan(&user.ID, &user.CreatedAt, &user.UpdatedAt, &user.Email, &user.UserID, &user.Phone)
	if err == sql.ErrNoRows {
		return nil, nil
	}
	if err != nil {
		return nil, err
	}
	return &user, nil
}
