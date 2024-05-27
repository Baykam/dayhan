package dto

type PhonePostReq struct {
	Phone string `json:"phone"`
}

type PhonePostRes struct {
	VerifyKey string `json:"verify_key"`
	UserID    string `json:"user_id"`
}

type TokenPostReq struct {
	SMS       string `json:"sms"`
	VerifyKey string `json:"verify_key"`
}

type TokenPostRes struct {
	AccessToken  string `json:"access_token"`
	RefreshToken string `json:"refresh_token"`
}

type RefreshTokenReq struct {
	RefreshToken string `json:"refresh_token"`
}

type RefreshTokenRes struct {
	AccessToken string `json:"access_token"`
}
