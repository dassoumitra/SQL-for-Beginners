# SQL Aggregate Functions

Aggregate functions are used to **perform calculations on multiple rows and return a single result**.

---

## Common Aggregate Functions

### COUNT()

Returns the number of rows.

SELECT COUNT(*) FROM students;

---

### SUM()

Returns the total value.

SELECT SUM(salary) FROM employees;

---

### AVG()

Returns the average value.

SELECT AVG(marks) FROM students;

---

### MIN()

Returns the smallest value.

SELECT MIN(price) FROM products;

---

### MAX()

Returns the largest value.

SELECT MAX(price) FROM products;

---

## GROUP BY Clause

The GROUP BY clause groups rows that have the same values.

Example:

SELECT department, COUNT(*)
FROM employees
GROUP BY department;

---

## HAVING Clause

HAVING is used to filter grouped data.

Example:

SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;

---

## General SQL Query Order

SELECT column(s)
FROM table_name
WHERE condition
GROUP BY column(s)
HAVING condition
ORDER BY column(s);