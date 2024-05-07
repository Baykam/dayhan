package statics

import "fmt"

// 1.[phone] 2.[user_id]
func GetRedisKeys(data string) (string, string) {

	phone := fmt.Sprintf("phone:%s", data)
	user_id := fmt.Sprintf("user_id:%s", data)
	return phone, user_id
}
