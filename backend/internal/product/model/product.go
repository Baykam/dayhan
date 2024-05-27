package model

import "time"

type Product struct {
	ID          int64      `db:"id"`
	CreatedAt   time.Time  `db:"created_at"`
	UpdatedAt   time.Time  `db:"updated_at"`
	DeletedAt   *time.Time `db:"deleted_at"`
	Name        string     `db:"name"`
	Description string     `db:"description"`
	Price       float64    `db:"price"`
	UserID      *int64     `db:"user_id"`
}
