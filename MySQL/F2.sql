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
    addresses (
        city,
        email,
        gender,
        date_of_birth
    )
VALUES (
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