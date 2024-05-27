package model

import "time"

type User struct {
	ID        int64      `db:"id"`
	CreatedAt *time.Time `db:"created_at"`
	UpdatedAt *time.Time `db:"updated_at"`
	Email     *string    `db:"email"`
	UserID    string     `db:"user_id"`
	Phone     string     `db:"phone"`
}
