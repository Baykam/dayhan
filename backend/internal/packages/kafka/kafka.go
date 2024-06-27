package productKafka

import (
	"context"
	"dayhan/internal/packages/config"
	"net"
	"strconv"
	"strings"

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

func (k *KafkaConn) CreateTopic(topic string, partition int) error {
	topicConfig := kafka.TopicConfig{
		Topic:             topic,
		NumPartitions:     partition,
		ReplicationFactor: 1,
	}

	return k.Conn.CreateTopics(topicConfig)
}

func (k *KafkaConn) SendMessage(topic, chatId, sender, message string) error {
	brokerAddress := net.JoinHostPort(k.Conn.Broker().Host, strconv.Itoa(k.Conn.Broker().Port))
	writer := kafka.NewWriter(kafka.WriterConfig{
		Brokers: []string{brokerAddress},
		Topic:   topic,
	})
	defer writer.Close()

	msg := kafka.Message{
		Key:   []byte(chatId),
		Value: []byte(sender + " : " + message),
	}

	return writer.WriteMessages(context.Background(), msg)
}

func (k *KafkaConn) ReadMessages(topic, chatId, topicGroupId string, handleMessage func(chatId, sender, message string) bool) error {
	brokerAddress := net.JoinHostPort(k.Conn.Broker().Host, strconv.Itoa(k.Conn.Broker().Port))
	reader := kafka.NewReader(kafka.ReaderConfig{
		Brokers: []string{brokerAddress},
		Topic:   topic,
		GroupID: topicGroupId,
	})
	defer reader.Close()

	for {
		msg, err := reader.ReadMessage(context.Background())
		if err != nil || string(msg.Key) != chatId {
			if err == kafka.ErrGroupClosed {
				break
			}
			if string(msg.Key) != chatId {
				break
			}
			return err
		}

		parts := strings.SplitN(string(msg.Value), ":", 2)
		if len(parts) != 2 {
			continue
		}
		sender := parts[0]
		message := parts[1]
		if !handleMessage(string(msg.Key), sender, message) {
			break
		}
	}
	return nil
}
