package dto

type ImageRes struct {
	Id  int64  `json:"id"`
	URL string `json:"url"`
}

type ImageReq struct {
	Name *string `json:"name"`
	Url  *string `json:"url"`
}
