CREATE DATABASE IF NOT EXISTS tenflix;

USE tenflix;

CREATE TABLE IF NOT EXISTS auth (
    username VARCHAR(255) PRIMARY KEY,
    password TEXT NOT NULL,
    rights INT
);