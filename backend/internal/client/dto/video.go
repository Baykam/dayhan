package dto

type VideoRes struct {
	Id  int64  `json:"id"`
	URL string `json:"url"`
}

type VideoReq struct {
	Name *string `json:"name"`
	Url  *string `json:"url"`
}
