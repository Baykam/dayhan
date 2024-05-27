package defaa

import "errors"

var (
	ErrInvalidUser     = errors.New("invalid User")
	ErrInvalidToken    = errors.New("invalid Token")
	ErrInvalidData     = errors.New("invalid Data")
	ErrInvalidRequest  = errors.New("invalid request")
	ErrUnAuthorized    = errors.New("Unauthorized")
	ErrExpiredToken    = errors.New("expired token")
	ErrPhoneNotValid   = errors.New("phone not valid")
	ErrNoDataHasUserId = errors.New("no data found with that id")
	ErrGenerateUid     = errors.New("generate uid is not true")

	ErrBadRequest = errors.New("bad request")

	DataHasDeleted = "Data has deleted"
)
