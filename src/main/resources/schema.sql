CREATE TABLE IF NOT EXISTS users (
     id INT AUTO_INCREMENT PRIMARY KEY,
      username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
    );

CREATE TABLE IF NOT EXISTS admins (
   id INT AUTO_INCREMENT PRIMARY KEY,
    username VARCHAR(50) NOT NULL,
    password VARCHAR(255) NOT NULL
    );
INSERT INTO admins (username, password)
SELECT 'aren', '12345'
    WHERE NOT EXISTS (
    SELECT 1
    FROM admins
    WHERE username = 'aren'
);
