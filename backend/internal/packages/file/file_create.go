package file

import (
	"encoding/base64"
	"errors"
	"os"
	"path/filepath"
)

func FileDecodeFromByte(apiDataString string, fileName string) (string, error) {
	// Decode Base64 string
	dataBytes, err := base64.StdEncoding.DecodeString(apiDataString)
	if err != nil {
		return "", err
	}

	// Create the necessary directories if they don't exist
	filePath := filepath.Join("path/", fileName)
	dirPath := filepath.Dir(filePath)

	err = os.MkdirAll(dirPath, 0755)
	if err != nil && !errors.Is(err, os.ErrExist) {
		// Handle error creating directories (other than "file already exists")
		return "", err
	}

	// Open the file for writing
	file, err := os.OpenFile(filePath, os.O_WRONLY|os.O_CREATE|os.O_TRUNC, 0644)
	if err != nil {
		if errors.Is(err, os.ErrInvalid) {
			return "", errors.New("File or directory not found: " + filePath)
		}
		return "", err
	}

	defer file.Close()

	_, err = file.Write(dataBytes)
	if err != nil {
		return "", err
	}

	return filePath, nil
}
