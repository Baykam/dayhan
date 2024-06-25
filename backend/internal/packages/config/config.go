package config

import (
	"log"
	"path/filepath"
	"runtime"
	"time"

	"github.com/caarlos0/env"
	"github.com/joho/godotenv"
)

type Schema struct {
	DbUrl        string `env:"db_url"`
	HttpPort     int    `env:"http_port"`
	Environment  string `env:"environment"`
	RedisAddr    string `env:"rds_addr"`
	RedisPass    string `env:"rds_pas"`
	RedisDb      int    `env:"rds_db"`
	AuthKey      string `env:"auth_key"`
	UserKey      string `env:"user_key"`
	Host         string `env:"host"`
	ChromePort   int    `env:"chrome_port"`
	KafkaBroker  string `env:"kafka_broker"`
	GrpcPort     int    `env:"grpc_port"`
	GrpcProtocol string `env:"grpc_protocol"`
}

const (
	ExpiredAccessTime  = time.Minute * 15
	ExpiredRefreshTime = time.Hour * 24 * 30
)

var cfg Schema

func LoadConfig() *Schema {
	_, filename, _, _ := runtime.Caller(0)
	currentDir := filepath.Dir(filename)

	err := godotenv.Load(filepath.Join(currentDir, "config.yaml"))
	if err != nil {
		log.Printf("Error on load configuration file, error: %v", err)
	}

	if err := env.Parse(&cfg); err != nil {
		log.Fatalf("Error on parsing configuration file, error: %v", err)
	}

	return &cfg
}

func GetConfig() *Schema {
	return &cfg
}
