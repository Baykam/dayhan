package db

import (
	"database/sql"
	"fmt"

	_ "github.com/lib/pq"
)

func NewDatabase(uri string) (*sql.DB, error) {
	db, err := sql.Open("postgres", uri)
	if err != nil {
		return nil, err
	}

	err = db.Ping()
	if err != nil {
		db.Close()
		return nil, fmt.Errorf("database connection not tested: %v", err)
	}

	return db, nil
}
