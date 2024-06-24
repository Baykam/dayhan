package productKafka

import (
	"dayhan/internal/packages/config"

	"github.com/segmentio/kafka-go"
)

type KafkaConn struct {
	Conn *kafka.Conn
}

func InitKafka(cfg config.Schema) (*KafkaConn, error) {

	conn, err := kafka.Dial("tcp", cfg.KafkaBroker)
	if err != nil {
		return nil, err
	}

	return &KafkaConn{Conn: conn}, nil
}
