package file

import (
	"encoding/base64"
	"os"
	"path/filepath"
)

func FileDecodeFromByte(apiDataString string, fileName string) (string, error) {
	// Decode Base64 string (adjust if using different encoding)
	dataBytes, err := base64.StdEncoding.DecodeString(apiDataString)
	if err != nil {
		return "", err
	}

	// Rest of the code remains the same as before
	file, err := os.Create(filepath.Join("path/to/", fileName))
	if err != nil {
		return "", err
	}

	defer file.Close()

	_, err = file.Write(dataBytes)
	if err != nil {
		return "", err
	}
	fullPath := filepath.Join("path/to/", fileName)
	return fullPath, nil
}
