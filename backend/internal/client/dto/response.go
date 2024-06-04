package dto

type HomeResponse struct {
	Banner     *[]ImageRes   `json:"banner"`
	Categories *[]Category   `json:"categories"`
	Products   *[]ProductRes `json:"products"`
}
