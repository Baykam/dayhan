package dto

type ImageRes struct {
	URL string `json:"url"`
}

type ImageReq struct {
	Name *string `json:"name"`
	Url  *string `json:"url"`
}
