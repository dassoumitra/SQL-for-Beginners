# SQL Interview Questions - Day 06

## 1. What is TRUNCATE?

TRUNCATE is used to remove all rows from a table quickly. It is faster than DELETE because it does not remove rows individually.

Example:

TRUNCATE TABLE students;

---

## 2. What is a JOIN in SQL?

A JOIN is used to combine rows from two or more tables based on a related column.

---

## 3. What is the difference between INNER JOIN and LEFT JOIN?

INNER JOIN returns only matching rows from both tables.

LEFT JOIN returns all rows from the left table and matching rows from the right table.

---

## 4. What is a SELF JOIN?

A SELF JOIN joins a table with itself.

Example:

SELECT A.name, B.name
FROM employees A
JOIN employees B
ON A.manager_id = B.id;

---

## 5. What is UNION?

UNION combines results of two or more SELECT queries into a single result set.

Rules:
- Same number of columns
- Compatible data types