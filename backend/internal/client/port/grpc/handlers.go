package grpcPort

import (
	"context"
	d "dayhan/proto"
)

type ProductHandlers struct {
	d.UnimplementedDayhanGrpcServer
}

func NewProductHandlers() *ProductHandlers {
	return &ProductHandlers{}
}

func (p *ProductHandlers) GetProductList(ctx context.Context, req *d.EmptyRequest) (*d.ProductListResponse, error) {
	products := []*d.ProductResponse{
		{Title: "Product1", Description: "Description1", Price: 10.0, Name: "Name1"},
		{Title: "Product2", Description: "Description2", Price: 20.0, Name: "Name2"},
	}
	return &d.ProductListResponse{Products: products}, nil
}
