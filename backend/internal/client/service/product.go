package service

import (
	"dayhan/internal/client/dto"
	"dayhan/internal/client/repository"
	defaa "dayhan/internal/packages/default"
	"dayhan/internal/packages/file"
)

type ProductService struct {
	repo      repository.RepositoryInterface
	imageRepo repository.ImageRepositoryInterface
	userRepo  repository.UserRepositoryInterface
}

func NewProductService(
	repo repository.RepositoryInterface,
	imageRepo repository.ImageRepositoryInterface,
	userRepo repository.UserRepositoryInterface,
) ProductServiceInterface {
	return &ProductService{
		repo:      repo,
		imageRepo: imageRepo,
		userRepo:  userRepo,
	}
}

type ProductServiceInterface interface {
	GetProductList() (*[]dto.ProductRes, error)
	SearchByName(query, userId string) (*[]dto.ProductRes, error)
	CreateProduct(req *dto.ProductCreateRequest, userId string) (*dto.ProductRes, error)
	GetProductById(userId string, productId int64) (*dto.ProductRes, error)
	DeleteProductById(userId string, id int64) error
	UpdateProductById(userId string, id int64, req dto.ProductCreateReq) (*dto.ProductRes, error)
}

func (p *ProductService) GetHomePage(userId string) (*dto.HomeResponse, error) {
	_, err := p.userRepo.GetUserByUserID(userId)
	if err != nil {
		return nil, err
	}
	products, err := p.repo.GetProductList()
	if err != nil {
		return nil, err
	}
	var images []dto.ImageRes
	response := dto.HomeResponse{
		Banner:   &images,
		Products: products,
	}

	return &response, nil
}

func (p *ProductService) GetProductList() (*[]dto.ProductRes, error) {
	products, err := p.repo.GetProductList()
	if err != nil {
		return nil, defaa.ErrBadRequest
	}
	return products, nil
}

func (p *ProductService) SearchByName(query, userId string) (*[]dto.ProductRes, error) {
	_, err := p.userRepo.GetUserByUserID(userId)
	if err != nil {
		return nil, defaa.ErrBadRequest
	}

	products, err := p.repo.SearchByName(query)
	if err != nil {
		return nil, err
	}
	return products, nil
}

func (p *ProductService) CreateProduct(req *dto.ProductCreateRequest, userId string) (*dto.ProductRes, error) {
	user, err := p.userRepo.GetUserByUserID(userId)
	if err != nil {
		return nil, err
	}

	productId, err := p.repo.CreateProduct(req, user.ID)
	if err != nil {
		return nil, err
	}

	for _, v := range *req.Images {
		path, err := file.FileDecodeFromByte(*v.Url, *v.Name)
		if err != nil {
			return nil, err
		}
		imageId, err := p.imageRepo.CreateImage(productId, path)
		if err != nil || imageId == 0 {
			return nil, err
		}
	}

	product, err := p.repo.GetProductById(productId, user.ID)
	if err != nil {
		return nil, err
	}
	return product, nil
}

func (p *ProductService) GetProductById(userId string, productId int64) (*dto.ProductRes, error) {
	user, err := p.userRepo.GetUserByUserID(userId)
	if err != nil {
		return nil, err
	}

	product, err := p.repo.GetProductById(productId, user.ID)
	if err != nil {
		return nil, err
	}
	return product, nil
}

func (p *ProductService) DeleteProductById(userId string, id int64) error {
	user, err := p.userRepo.GetUserByUserID(userId)
	if err != nil {
		return err
	}
	err = p.repo.DeleteProductById(id, user.ID)
	if err != nil {
		return err
	}
	return nil
}

func (p *ProductService) UpdateProductById(userId string, id int64, req dto.ProductCreateReq) (*dto.ProductRes, error) {
	user, err := p.userRepo.GetUserByUserID(userId)
	if err != nil {
		return nil, err
	}

	updatedId, err := p.repo.UpdateProductById(id, req)
	if err != nil {
		return nil, err
	}

	res, err := p.repo.GetProductById(updatedId, user.ID)
	if err != nil {
		return nil, err
	}
	return res, nil
}
