package file

import (
	"fmt"
	"net/url"
)

func AddPathHttp(host, url string, port int) string {
	image := fmt.Sprintf("http://%s:%v/%s", host, port, url)
	return image
}

func GetPathRightSide(fullURL string) (string, error) {
	parsedURL, err := url.Parse(fullURL)
	if err != nil {
		return "", err
	}

	// Parse the path and get the right side of the path after "path/"
	path := parsedURL.Path
	pathSegments := "/path/"
	pathIndex := len(pathSegments)

	if len(path) > pathIndex && path[:pathIndex] == pathSegments {
		rPath := fmt.Sprintf("./path/%v", path[pathIndex:])
		return rPath, nil
	}

	return "", fmt.Errorf("URL does not contain the expected path segment")
}
