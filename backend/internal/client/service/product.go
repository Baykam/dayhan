package service

import (
	"dayhan/internal/client/dto"
	"dayhan/internal/client/repository"
	defaa "dayhan/internal/packages/default"
	"dayhan/internal/packages/file"
	productKafka "dayhan/internal/packages/kafka"
	"encoding/json"
	"log"
	"time"

	"github.com/segmentio/kafka-go"
)

type ProductService struct {
	repo      repository.RepositoryInterface
	imageRepo repository.ImageRepositoryInterface
	userRepo  repository.UserRepositoryInterface
	videoRepo repository.VideoRepositoryInterface
	conn      productKafka.KafkaConn
}

func NewProductService(
	repo repository.RepositoryInterface,
	imageRepo repository.ImageRepositoryInterface,
	userRepo repository.UserRepositoryInterface,
	videoRepo repository.VideoRepositoryInterface,
	conn productKafka.KafkaConn,
) ProductServiceInterface {
	return &ProductService{
		repo:      repo,
		imageRepo: imageRepo,
		userRepo:  userRepo,
		videoRepo: videoRepo,
		conn:      conn,
	}
}

type ProductServiceInterface interface {
	GetProductList() (*[]dto.ProductRes, error)
	SearchByName(query, userId string) (*[]dto.ProductRes, error)
	CreateProduct(req *dto.ProductCreateRequest, userId string) (*dto.ProductRes, error)
	GetProductByIdAndUserId(userId string, productId int64) (*dto.ProductRes, error)
	GetProductById(userId string, productId int64) (*dto.ProductRes, error)
	DeleteProductById(userId string, id int64) error
	UpdateProductById(userId string, id int64, req dto.ProductCreateReq) (*dto.ProductRes, error)
}

func (p *ProductService) GetProductList() (*[]dto.ProductRes, error) {
	products, err := p.repo.GetProductList()
	if err != nil {
		return nil, err
	}
	for i, v := range *products {
		imageList, err := p.imageRepo.GetImageList(int64(v.Id))
		if err != nil {
			return nil, err
		}
		videos, err := p.videoRepo.GetVideoList(int64(v.Id))
		if err != nil {
			return nil, err
		}
		(*products)[i].Images = append((*products)[i].Images, *imageList...)
		(*products)[i].Videos = append((*products)[i].Videos, *videos...)
	}
	return products, nil
}

func (p *ProductService) SearchByName(query, userId string) (*[]dto.ProductRes, error) {
	products, err := p.repo.SearchByName(query)
	if err != nil {
		return nil, err
	}

	for i, v := range *products {
		images, err := p.imageRepo.GetImageList(int64(v.Id))
		if err != nil {
			return nil, err
		}
		videos, err := p.videoRepo.GetVideoList(int64(v.Id))
		if err != nil {
			return nil, err
		}
		(*products)[i].Images = append((*products)[i].Images, *images...)
		(*products)[i].Videos = append((*products)[i].Videos, *videos...)
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

	if req.Images != nil {
		for _, v := range *req.Images {
			path, err := file.FileDecodeFromByte(*v.Url, *v.Name, "image")
			if err != nil {
				return nil, err
			}
			imageId, err := p.imageRepo.CreateImage(productId, path)
			if err != nil || imageId == 0 {
				return nil, err
			}
		}
	}

	if req.Videos != nil {
		for _, v := range *req.Videos {
			path, err := file.FileDecodeFromByte(*v.Url, *v.Name, "video")
			if err != nil {
				return nil, err
			}
			videoId, err := p.videoRepo.CreateVideo(productId, path)
			if err != nil || videoId == 0 {
				return nil, err
			}
		}
	}

	product, err := p.repo.GetProductByIdAndUserId(productId, user.ID)
	if err != nil {
		return nil, err
	}
	go func() {
		productJson, err := json.Marshal(product)
		if err != nil {
			log.Fatalf("error when json convert")
		}

		p.conn.Conn.WriteMessages(kafka.Message{
			Topic: defaa.KafkaTopicNotification,
			Key:   []byte(userId),
			Value: productJson,
		})
		p.conn.Conn.SetReadDeadline(time.Now().Add(10 * time.Second))
		batch := p.conn.Conn.ReadBatch(10e3, 1e6)
		defer batch.Close()

		for {
			// message := kafka.Message{}
			t, err := batch.ReadMessage()
			if err != nil {
				if err == kafka.ErrGenerationEnded {
					break
				}
				continue
			}
			// Deserialize the message value to check the productId
			var msgProduct dto.ProductRes
			err = json.Unmarshal(t.Value, &msgProduct)
			if err != nil {
				log.Printf("error when unmarshaling message: %v", err)
				continue
			}

			// Filter messages by productId
			if msgProduct.Id == product.Id {
				log.Printf("Message read from kafka with productId %d: %s\n", msgProduct.Id, string(t.Value))
				// Process the message as needed
				break
			}
		}
	}()
	return product, nil
}

func (p *ProductService) GetProductByIdAndUserId(userId string, productId int64) (*dto.ProductRes, error) {
	user, err := p.userRepo.GetUserByUserID(userId)
	if err != nil {
		return nil, err
	}

	product, err := p.repo.GetProductByIdAndUserId(productId, user.ID)
	if err != nil {
		return nil, err
	}
	return product, nil
}

func (p *ProductService) GetProductById(userId string, productId int64) (*dto.ProductRes, error) {

	product, err := p.repo.GetProductById(productId)
	if err != nil {
		return nil, err
	}
	images, err := p.imageRepo.GetImageList(int64(product.Id))
	if err != nil {
		return nil, err
	}
	videos, err := p.videoRepo.GetVideoList(int64(product.Id))
	if err != nil {
		return nil, err
	}
	product.Images = append(product.Images, *images...)
	product.Videos = append(product.Videos, *videos...)
	return product, nil
}

func (p *ProductService) DeleteProductById(userId string, id int64) error {
	user, err := p.userRepo.GetUserByUserID(userId)
	if err != nil {
		return err
	}
	product, err := p.repo.GetProductById(id)
	if err != nil {
		return err
	}

	images, err := p.imageRepo.GetImageList(int64(product.Id))
	if err != nil {
		return err
	}
	if images != nil {
		err = p.imageRepo.DeleteImageByProductId(int64(product.Id))
		if err != nil {
			return err
		}
		for _, v := range *images {
			path, err := file.GetPathRightSide(v.URL)
			if err != nil {
				return err
			}
			err = file.DeleteFile(path)
			if err != nil {
				return err
			}
		}
	}
	videos, err := p.videoRepo.GetVideoList(int64(product.Id))
	if err != nil {
		return err
	}
	if videos != nil {
		err = p.videoRepo.DeleteVideoByProductId(int64(product.Id))
		if err != nil {
			return err
		}
		for _, v := range *videos {
			path, err := file.GetPathRightSide(v.URL)
			if err != nil {
				return err
			}
			err = file.DeleteFile(path)
			if err != nil {
				return err
			}
		}
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

	_, err = p.repo.GetProductByIdAndUserId(id, user.ID)
	if err != nil {
		return nil, err
	}

	updatedId, err := p.repo.UpdateProductById(id, req)
	if err != nil {
		return nil, err
	}

	res, err := p.repo.GetProductByIdAndUserId(updatedId, user.ID)
	if err != nil {
		return nil, err
	}
	return res, nil
}
