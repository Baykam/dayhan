-- Kullanıcı tablosu
CREATE TABLE IF NOT EXISTS users (
  id SERIAL PRIMARY KEY,
  created_at TIMESTAMP NOT NULL DEFAULT (now()),
  updated_at TIMESTAMP NOT NULL DEFAULT (now()),
  deleted_at TIMESTAMP,
  email VARCHAR(255) UNIQUE,
  refresh_token VARCHAR(255) NOT NULL UNIQUE,
  phone VARCHAR(30),
  user_id VARCHAR(200)
);

-- Ürün tablosu
CREATE TABLE IF NOT EXISTS product (
  id SERIAL PRIMARY KEY,
  created_at TIMESTAMP NOT NULL DEFAULT (now()),
  updated_at TIMESTAMP NOT NULL DEFAULT (now()),
  deleted_at TIMESTAMP,
  name VARCHAR(255) NOT NULL,
  description TEXT,
  price DECIMAL(10,2) NOT NULL,
  user_id INTEGER REFERENCES users(id)
);