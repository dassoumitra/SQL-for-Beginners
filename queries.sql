-- Create Table

CREATE TABLE employees (
    id INT,
    name VARCHAR(50),
    salary INT,
    department_id INT
);

-- Insert Data

INSERT INTO employees VALUES
(1,'Alice',50000,1),
(2,'Bob',60000,2),
(3,'Charlie',70000,1),
(4,'David',55000,3);

-- 1 Find employees with salary greater than average salary

SELECT name, salary
FROM employees
WHERE salary >
(
    SELECT AVG(salary)
    FROM employees
);

-- 2 Find employees from departments that exist in department table

SELECT name
FROM employees
WHERE department_id IN
(
    SELECT department_id
    FROM employees
);

-- 3 Correlated Subquery

SELECT name
FROM employees e
WHERE salary >
(
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);

-- 4 Using EXISTS

SELECT name
FROM employees e
WHERE EXISTS
(
    SELECT 1
    FROM employees
    WHERE department_id = e.department_id
);
