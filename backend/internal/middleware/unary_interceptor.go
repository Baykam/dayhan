package middleware

import (
	"context"
	"dayhan/internal/auth/service/token"

	"google.golang.org/grpc"
	"google.golang.org/grpc/codes"
	"google.golang.org/grpc/metadata"
	"google.golang.org/grpc/status"
)

type contextKey string

const UserIDKey contextKey = "userId"

type wrappedServerStream struct {
	grpc.ServerStream
	wrappedContext context.Context
}

func (w *wrappedServerStream) Context() context.Context {
	return w.wrappedContext
}

func WrapServerStream(stream grpc.ServerStream, ctx context.Context) grpc.ServerStream {
	return &wrappedServerStream{ServerStream: stream, wrappedContext: ctx}
}

func UnaryAuthInterceptor(tokenService token.TokenService) grpc.UnaryServerInterceptor {
	return func(
		ctx context.Context,
		req interface{},
		info *grpc.UnaryServerInfo,
		handler grpc.UnaryHandler,
	) (interface{}, error) {
		md, ok := metadata.FromIncomingContext(ctx)
		if !ok {
			return nil, status.Errorf(codes.Unauthenticated, "metadata is not provided")
		}

		tokenString := md["authorization"]
		if len(tokenString) == 0 {
			return nil, status.Errorf(codes.Unauthenticated, "authorization token is not provided")
		}

		verifyRequest := token.VerifyTokenRequest{
			TokenString: tokenString[0],
			UsedFor:     token.User,
		}

		response, err := tokenService.VerifyToken(verifyRequest)
		if err != nil {
			return nil, status.Errorf(codes.Unauthenticated, "invalid token: %v", err)
		}

		ctx = context.WithValue(ctx, UserIDKey, response.UserID)
		return handler(ctx, req)
	}
}

func StreamAuthInterceptor(tokenService token.TokenService) grpc.StreamServerInterceptor {
	return func(
		srv interface{},
		ss grpc.ServerStream,
		info *grpc.StreamServerInfo,
		handler grpc.StreamHandler,
	) error {
		md, ok := metadata.FromIncomingContext(ss.Context())
		if !ok {
			return status.Errorf(codes.Unauthenticated, "metadata is not provided")
		}

		tokenString := md["authorization"]
		if len(tokenString) == 0 {
			return status.Errorf(codes.Unauthenticated, "authorization token is not provided")
		}

		verifyRequest := token.VerifyTokenRequest{
			TokenString: tokenString[0],
			UsedFor:     token.User,
		}

		response, err := tokenService.VerifyToken(verifyRequest)
		if err != nil {
			return status.Errorf(codes.Unauthenticated, "invalid token: %v", err)
		}

		wrapped := WrapServerStream(ss, context.WithValue(ss.Context(), UserIDKey, response.UserID))

		return handler(srv, wrapped)
	}
}
