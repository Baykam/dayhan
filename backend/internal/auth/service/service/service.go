package service

import (
	"database/sql"
	"dayhan/internal/auth/repository"
)

type AuthService struct {
	repository repository.AuthRepositoryInterface
}

func NewAuthService(repository repository.AuthRepositoryInterface) AuthServiceInterface {
	return &AuthService{
		repository: repository,
	}
}

type AuthServiceInterface interface {
	SaveUser(userId, phone string) error
	RefreshAccessUserId(userId string) (string, error)
}

func (a *AuthService) SaveUser(userId, phone string) error {
	existingUser, err := a.repository.GetUserByPhone(phone)
	if err != nil && err != sql.ErrNoRows {
		err = a.repository.CreateUser(userId, phone)
		if err != nil {
			return err
		}
	}

	if existingUser != nil {
		err := a.repository.UpdateUserByID(existingUser.ID, userId)
		if err != nil {
			return err
		}
		return nil
	}
	return nil
}

func (a *AuthService) RefreshAccessUserId(userId string) (string, error) {
	existingUser, err := a.repository.GetUserByUserId(userId)
	if err != nil && err != sql.ErrNoRows {
		return "", err
	}

	if existingUser != nil {
		err := a.repository.UpdateUserByID(existingUser.ID, userId)
		if err != nil {
			return "", err
		}
		return existingUser.UserID, nil
	}
	return existingUser.UserID, nil
}
