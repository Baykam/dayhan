package rds

import (
	"dayhan/internal/packages/config"
	"fmt"

	"github.com/go-redis/redis/v8"
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

	if err := rds.Ping(rds.Context()).Err(); err != nil {
		return nil, fmt.Errorf("redis bağlantısı kurulamadı: %v", err)
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
