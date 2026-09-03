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
ALTER TABLE users MODIFY COLUMN email VARCHAR(100) UNIQUE NOT NULL AFTER name;;

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

    INSERT INTO
    users (
        name,
        email,
        gender,
        date_of_birth
    )
VALUES 
    (
    'David',
    'david@example.com',
    'Male',
    '2000-08-09'
),
(
    'Eva',
    'eva@example.com',
    'Female',
    '1993-12-30'
);

SELECT * FROM users WHERE gender = 'Male';

SELECT * FROM users WHERE id > 10;

SELECT * FROM users WHERE date_of_birth IS NULL;

SELECT * FROM users WHERE date_of_birth IS NOT NULL;

SELECT *
FROM users
WHERE
    date_of_birth BETWEEN '1990-01-01' AND '2000-12-31';

SELECT * FROM users WHERE name LIKE 'A%';
-- Starts with A
SELECT * FROM users WHERE name LIKE '%a';
-- Ends with a
SELECT * FROM users WHERE name LIKE '%li%';
-- Contains 'li'

SELECT *
FROM users
WHERE
    gender = 'Female'
    AND date_of_birth > '1990-01-01';

SELECT * FROM users ORDER BY date_of_birth ASC;

SELECT * FROM users ORDER BY name DESC;

SELECT * FROM users LIMIT 5;

UPDATE users SET name = 'Alicia' WHERE id = 1;