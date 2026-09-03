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
       city
    )
VALUES (
       'Mumbai'
    ),
      (
       'Kolkata'
    ),
    (
       'New Delhi'
    );