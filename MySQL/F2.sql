USE hydra;

CREATE TABLE addresses (
    id INT AUTO_INCREMENT PRIMARY KEY,
    user_id INT,
    street VARCHAR(255),
    city VARCHAR(100),
    state VARCHAR(100),
    pincode VARCHAR(10),
    FOREIGN KEY (user_id) REFERENCES users (id)
);

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