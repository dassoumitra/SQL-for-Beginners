# SQL Day 06 Notes

## 1. TRUNCATE

TRUNCATE is used to delete all rows from a table quickly.

Syntax:

TRUNCATE TABLE table_name;

Example:

TRUNCATE TABLE students;

Difference between DELETE and TRUNCATE

DELETE
- Removes rows one by one
- Can use WHERE clause
- Slower

TRUNCATE
- Removes all rows instantly
- Cannot use WHERE clause
- Faster

---

# 2. JOINS

Joins are used to combine rows from two or more tables based on a related column.

Example Tables

students

| id | name |
|----|------|
| 1 | Rahul |
| 2 | Amit |

marks

| id | marks |
|----|------|
| 1 | 90 |
| 2 | 80 |

---

## 2.1 INNER JOIN

Returns only the rows that have matching values in both tables.

Example:

SELECT students.name, marks.marks
FROM students
INNER JOIN marks
ON students.id = marks.id;

---

## 2.2 LEFT JOIN

Returns all records from the left table and matching records from the right table.

Example:

SELECT students.name, marks.marks
FROM students
LEFT JOIN marks
ON students.id = marks.id;

---

## 2.3 RIGHT JOIN

Returns all records from the right table and matching records from the left table.

Example:

SELECT students.name, marks.marks
FROM students
RIGHT JOIN marks
ON students.id = marks.id;

---

## 2.4 FULL JOIN

Returns all records when there is a match in either left or right table.

Example:

SELECT students.name, marks.marks
FROM students
FULL JOIN marks
ON students.id = marks.id;

---

## LEFT EXCLUSIVE JOIN

Returns rows present only in the left table.

Example:

SELECT *
FROM students
LEFT JOIN marks
ON students.id = marks.id
WHERE marks.id IS NULL;

---

## RIGHT EXCLUSIVE JOIN

Returns rows present only in the right table.

Example:

SELECT *
FROM students
RIGHT JOIN marks
ON students.id = marks.id
WHERE students.id IS NULL;

---

## SELF JOIN

A self join joins a table with itself.

Example:

SELECT A.name, B.name
FROM employees A
JOIN employees B
ON A.manager_id = B.id;

---

# 3. UNION

UNION is used to combine results from two SELECT queries.

Syntax:

SELECT column FROM table1
UNION
SELECT column FROM table2;

Rules

- Number of columns must be same
- Datatypes must be compatible

Example:

SELECT name FROM students
UNION
SELECT name FROM teachers;