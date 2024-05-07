package repository

import (
	"database/sql"
)

type Database struct {
	db *sql.DB
}

func NewRepository(db *sql.DB) *Database {
	return &Database{
		db: db,
	}
}
