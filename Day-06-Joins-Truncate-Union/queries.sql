-- TRUNCATE Example
TRUNCATE TABLE students;

-- Create tables
CREATE TABLE students(
id INT,
name VARCHAR(50)
);

CREATE TABLE marks(
id INT,
marks INT
);

-- INNER JOIN
SELECT students.name, marks.marks
FROM students
INNER JOIN marks
ON students.id = marks.id;

-- LEFT JOIN
SELECT students.name, marks.marks
FROM students
LEFT JOIN marks
ON students.id = marks.id;

-- RIGHT JOIN
SELECT students.name, marks.marks
FROM students
RIGHT JOIN marks
ON students.id = marks.id;

-- FULL JOIN
SELECT students.name, marks.marks
FROM students
FULL JOIN marks
ON students.id = marks.id;

-- LEFT EXCLUSIVE JOIN
SELECT *
FROM students
LEFT JOIN marks
ON students.id = marks.id
WHERE marks.id IS NULL;

-- RIGHT EXCLUSIVE JOIN
SELECT *
FROM students
RIGHT JOIN marks
ON students.id = marks.id
WHERE students.id IS NULL;

-- SELF JOIN
SELECT A.name, B.name
FROM employees A
JOIN employees B
ON A.manager_id = B.id;

-- UNION
SELECT name FROM students
UNION
SELECT name FROM teachers;