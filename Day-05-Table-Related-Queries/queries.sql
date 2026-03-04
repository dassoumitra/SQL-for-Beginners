-- Create a table
CREATE TABLE students (
id INT PRIMARY KEY,
name VARCHAR(50),
marks INT
);

-- Insert sample data
INSERT INTO students VALUES (1,'Rahul',80);
INSERT INTO students VALUES (2,'Amit',75);
INSERT INTO students VALUES (3,'Priya',90);

-- UPDATE example
UPDATE students
SET marks = 85
WHERE id = 2;

-- DELETE example
DELETE FROM students
WHERE id = 3;

-- ALTER TABLE ADD COLUMN
ALTER TABLE students
ADD age INT;

-- ALTER TABLE DROP COLUMN
ALTER TABLE students
DROP COLUMN age;

-- ALTER TABLE RENAME TABLE
ALTER TABLE students
RENAME TO student_details;

-- CHANGE COLUMN NAME
ALTER TABLE student_details
CHANGE name student_name VARCHAR(50);

-- MODIFY COLUMN TYPE
ALTER TABLE student_details
MODIFY marks FLOAT;

-- Parent table
CREATE TABLE department (
dept_id INT PRIMARY KEY,
dept_name VARCHAR(50)
);

-- Child table with cascading
CREATE TABLE employee (
emp_id INT,
emp_name VARCHAR(50),
dept_id INT,
FOREIGN KEY (dept_id)
REFERENCES department(dept_id)
ON DELETE CASCADE
ON UPDATE CASCADE
);