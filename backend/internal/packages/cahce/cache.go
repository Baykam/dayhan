package cahce

import (
	"fmt"
	"sync"
)

type Storage struct {
	mu   sync.RWMutex
	data map[string][]byte
}

func NewStorage(
	data map[string][]byte) DataStore {
	return &Storage{
		data: data,
	}
}

type DataStore interface {
	Put(key string, value []byte) error
	Get(key string) ([]byte, error)
}

func (s *Storage) Put(key string, value []byte) error {
	s.mu.Lock()
	defer s.mu.Unlock()

	s.data[key] = value

	return nil
}

func (s *Storage) Get(key string) ([]byte, error) {
	s.mu.RLock()
	defer s.mu.RUnlock()

	value, ok := s.data[key]
	if !ok {
		return nil, fmt.Errorf("value not found")
	}
	return value, nil
}
