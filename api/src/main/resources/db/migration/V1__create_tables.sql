CREATE TABLE IF NOT EXISTS users (
    id UUID PRIMARY KEY,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    name VARCHAR NOT NULL,
    cpf VARCHAR(11),
    password VARCHAR NOT NULL,
    status VARCHAR(12) NOT NULL CHECK (status IN ('ACTIVE', 'INACTIVE')) DEFAULT 'ACTIVE'
);

CREATE TABLE IF NOT EXISTS restaurants (
    id UUID PRIMARY KEY,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    name VARCHAR NOT NULL,
    cnpj VARCHAR(14),
    password VARCHAR NOT NULL,
    status VARCHAR(12) NOT NULL CHECK (status IN ('ACTIVE', 'INACTIVE')) DEFAULT 'ACTIVE'
);

CREATE TABLE IF NOT EXISTS posts (
    id BIGSERIAL PRIMARY KEY,
    user_id UUID REFERENCES users(id) ON DELETE CASCADE,
    restaurant_id UUID REFERENCES restaurants(id) ON DELETE CASCADE,
    name VARCHAR(255) NOT NULL,
    amount INTEGER NOT NULL,
    description TEXT,
    address VARCHAR(255) NOT NULL,
    valid_until TIMESTAMP NOT NULL,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    image_key VARCHAR(255),
    status VARCHAR(12) NOT NULL CHECK (status IN ('ACTIVE', 'INACTIVE', 'FULL', 'EXPIRED'))
    CHECK (
        (user_id IS NOT NULL AND restaurant_id IS NULL)
        OR (user_id IS NULL AND restaurant_id IS NOT NULL)
    )
);
