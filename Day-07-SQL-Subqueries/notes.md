# Subqueries in SQL

## What is a Subquery?

A **Subquery** is a query inside another SQL query.

It is usually used inside:

* SELECT
* WHERE
* FROM

Example:

```sql
SELECT name
FROM employees
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
);
```

---

# Types of Subqueries

## 1. Single Row Subquery

Returns only **one row**.

Example:

```sql
SELECT name
FROM employees
WHERE salary > (
    SELECT salary
    FROM employees
    WHERE id = 1
);
```

---

## 2. Multiple Row Subquery

Returns **multiple rows**.

Example:

```sql
SELECT name
FROM employees
WHERE department_id IN (
    SELECT id
    FROM departments
);
```

---

## 3. Correlated Subquery

A subquery that **depends on the outer query**.

Example:

```sql
SELECT name
FROM employees e
WHERE salary > (
    SELECT AVG(salary)
    FROM employees
    WHERE department_id = e.department_id
);
```

---

# Operators Used with Subqueries

## IN

Matches any value in a list.

```sql
SELECT name
FROM employees
WHERE department_id IN (
    SELECT id FROM departments
);
```

## ANY

```sql
SELECT name
FROM employees
WHERE salary > ANY (
    SELECT salary FROM employees
);
```

## ALL

```sql
SELECT name
FROM employees
WHERE salary > ALL (
    SELECT salary FROM employees
);
```

## EXISTS

```sql
SELECT name
FROM employees e
WHERE EXISTS (
    SELECT 1
    FROM departments d
    WHERE d.id = e.department_id
);
```
