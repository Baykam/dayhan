package file

import (
	"os"
	"path/filepath"
)

func FileDecodeFromByte(decodedData []byte, fileName string) (string, error) {
	file, err := os.Create(filepath.Join("path/to/", fileName))
	if err != nil {
		return "", err
	}

	defer file.Close()

	_, err = file.Write(decodedData)
	if err != nil {
		return "", err
	}
	fullPath := filepath.Join("path/to/", fileName)
	return fullPath, nil
}
