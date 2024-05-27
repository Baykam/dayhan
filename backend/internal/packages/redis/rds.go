package rds

import (
	"context"
	"dayhan/internal/packages/config"
	"fmt"

	"github.com/redis/go-redis/v9"
)

type RedisDatabase struct {
	Redis *redis.Client
}

var productRedis *RedisDatabase

func LoadRedis(cfg *config.Schema) (*RedisDatabase, error) {
	rds := redis.NewClient(&redis.Options{
		Addr:     cfg.RedisAddr,
		DB:       cfg.RedisDb,
		Password: cfg.RedisPass,
	})
	ctx := context.Background()

	fmt.Printf("Connecting to Redis at %s\n", cfg.RedisAddr)

	if err := rds.Ping(ctx).Err(); err != nil {
		fmt.Printf("Error connecting to Redis: %v\n", err)
		return nil, err
	}

	productRedis = &RedisDatabase{Redis: rds}
	return productRedis, nil
}

func GetRedis() *RedisDatabase {
	if productRedis == nil {
		fmt.Println("Warning: Redis has not been initialized. Call LoadRedis first.")
	}
	return productRedis
}
