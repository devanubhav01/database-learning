CREATE DATABASE hydra;

USE hydra;

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(100) NOT NULL,
    email VARCHAR(100) UNIQUE NOT NULL,
    gender ENUM('Male','Female','Other'),
    date_of_birth DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

#DROP DATABASE hydra;

SELECT * FROM users;

SELECT name, email FROM users;

RENAME TABLE users TO customers;

RENAME TABLE customers TO users;

ALTER TABLE users ADD COLUMN is_active BOOLEAN DEFAULT TRUE;

ALTER TABLE users DROP COLUMN is_active;

ALTER TABLE users MODIFY COLUMN name VARCHAR(150);

#ALTER TABLE users MODIFY COLUMN email VARCHAR(100) FIRST;

ALTER TABLE users MODIFY COLUMN gender ENUM('Male', 'Female', 'Other') AFTER name;

INSERT INTO
    users
VALUES (
        1,
        'Alice',
        'alice@example.com',
        'Female',
        '1995-05-14',
        DEFAULT
    );