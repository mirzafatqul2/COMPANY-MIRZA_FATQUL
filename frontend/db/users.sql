-- DDL --
-- Create Table users
CREATE TABLE users (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL UNIQUE,
  password VARCHAR(255) NOT NULL,
  role ENUM('user', 'admin') DEFAULT 'user',
  is_active BOOLEAN DEFAULT TRUE,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP
);

-- DML --
-- Insert user
INSERT INTO users (name, email, password, role)
VALUES (
  'John Doe',
  'john@example.com',
  'hashed_password',
  'user'
);

-- Create
INSERT INTO users (name, email, password)
VALUES ('Mirza', 'mirza@example.com', 'hashed_password');

-- Read
SELECT id, name, email, role, is_active
FROM users;

-- Update
UPDATE users
SET name = 'Mirza F', role = 'admin'
WHERE id = 1;

-- Delete
DELETE FROM users
WHERE id = 1;
