-- DDL --
-- Create Table contact
CREATE TABLE contact (
  id INT AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(100) NOT NULL,
  email VARCHAR(100) NOT NULL,
  message TEXT NOT NULL,
  created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- DML --
-- Insert contact
INSERT INTO contact (name, email, message)
VALUES (
  'Andi',
  'andi@example.com',
  'I am interested in your web development services.'
);

-- Create
INSERT INTO contact (name, email, message)
VALUES ('Sarah', 'sarah@example.com', 'its a beautiful website.');

-- Read
SELECT id, name, email, message, created_at
FROM contact
ORDER BY created_at DESC;

-- Update
UPDATE contact
SET name = 'Sarah W'
WHERE id = 1;

-- Delete
DELETE FROM contact
WHERE id = 1;
