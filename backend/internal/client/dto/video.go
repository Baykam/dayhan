package dto

type VideoRes struct {
	URL string `json:"url"`
}

type VideoReq struct {
	Name *string `json:"name"`
	Url  *string `json:"url"`
}
