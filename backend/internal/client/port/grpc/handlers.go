package grpcPort

import (
	"context"
	"dayhan/internal/client/dto"
	"dayhan/internal/client/service"
	"dayhan/internal/middleware"
	d "dayhan/proto/generated"
	"io"

	"github.com/quangdangfit/gocommon/logger"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/status"
	"google.golang.org/protobuf/types/known/timestamppb"
)

type ProductHandlers struct {
	d.UnimplementedDayhanGrpcServer
	service service.ProductServiceInterface
}

func NewProductHandlers(service service.ProductServiceInterface) *ProductHandlers {
	return &ProductHandlers{
		service: service,
	}
}

func (p *ProductHandlers) GetProductList(ctx context.Context, req *d.EmptyRequest) (*d.ProductListResponse, error) {

	products, err := p.service.GetProductList()
	if err != nil {
		logger.Errorf("sadsad : %v", err)
	}

	var newList []*d.ProductResponse
	for _, v := range *products {
		newList = append(newList, &d.ProductResponse{
			Id:          int64(v.Id),
			Description: v.Description,
			CategoryId:  []int64{},
			Price:       v.Price,
			Name:        v.Name,
			UpdatedAt:   timestamppb.New(v.UpdatedAt),
		})
	}
	return &d.ProductListResponse{Products: newList}, nil
}

func (p *ProductHandlers) GetProductById(ctx context.Context, req *d.ProductRequest) (*dto.ProductRes, error) {
	value := ctx.Value(middleware.UserIDKey).(string)
	product, err := p.service.GetProductById(value, req.Id)
	if err != nil {
		logger.Errorf("sadsad : %v", err)
	}
	return product, nil
}

func (p *ProductHandlers) StreamGetProductList(req *d.EmptyRequest, stream d.DayhanGrpc_GetProductListStreamServer) error {

	pp, err := p.service.GetProductList()
	if err != nil {
		logger.Errorf("sdasdsa : %v", err)
	}
	var products []*d.ProductResponse
	for _, v := range *pp {
		products = append(products, &d.ProductResponse{
			Id:          int64(v.Id),
			Description: v.Description,
			Name:        v.Name,
			Price:       v.Price,
		})
	}

	if err := stream.Send(&d.ProductListResponse{
		Products: products,
	}); err != nil {
		return status.Errorf(codes.Internal, "failed to send product: %v", err)
	}

	return nil
}
func (p *ProductHandlers) ChatWithApp(stream d.DayhanGrpc_ChatUsersServer) error {
	for {
		req, err := stream.Recv()
		if err == io.EOF {
			return nil
		}
		if err != nil {
			return status.Errorf(codes.Internal, "failed to receive message: %v", err)
		}

		response := &d.ChatRes{
			ChatTitle:    req.ChatTitle,
			ChatId:       req.ChatId,
			ChatMessages: []string{"Message received from user: " + req.UserId},
		}

		if err := stream.Send(response); err != nil {
			return status.Errorf(codes.Internal, "failed to send message: %v", err)
		}
	}
}
