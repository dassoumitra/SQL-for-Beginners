-- Day 2 SQL Queries

-- Create Database
CREATE DATABASE college;

-- Show all databases
SHOW DATABASES;

-- Use database
USE college;

-- Create table
CREATE TABLE students(
 id INT,
 name VARCHAR(50),
 age INT
);

-- Show tables
SHOW TABLES;

-- Describe table structure
DESCRIBE students;

-- Table with constraints
CREATE TABLE employees(
 id INT PRIMARY KEY,
 name VARCHAR(50) NOT NULL,
 email VARCHAR(100) UNIQUE,
 age INT DEFAULT 18
);

-- Delete table
DROP TABLE students;

-- Delete database
DROP DATABASE college;