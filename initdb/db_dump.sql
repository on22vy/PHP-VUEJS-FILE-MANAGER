BEGIN;

USE `MYSQL_DATABASE`;

DROP TABLE IF EXISTS files;
CREATE TABLE files (
    id INT AUTO_INCREMENT PRIMARY KEY,
    filename VARCHAR(255) NOT NULL,
    filesize INT NOT NULL,
    created_date DATETIME NOT NULL,
    path_to_file VARCHAR(255) NOT NULL
);

INSERT INTO `files` (filename, filesize, created_date, path_to_file) VALUES
('Initial File.pdf', 55940, '2023-11-11 22:47:59', 'uploads/Initial File.pdf');

CREATE TABLE users (
    id INT AUTO_INCREMENT PRIMARY KEY,
    username varchar(255) NOT NULL,
    password varchar(255) NOT NULL
);

INSERT INTO `users` (username, password) VALUES
('admin', '123456'),
('user', '123456');


COMMIT;