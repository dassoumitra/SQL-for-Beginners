# Day 3 Notes – SELECT Queries and Operators

## 1. SELECT Statement

The **SELECT statement** retrieves data from a database table.

### Syntax

```sql
SELECT column_name
FROM table_name;
```

Example

```sql
SELECT name, age FROM students;
```

---

## 2. SELECT All Columns

```sql
SELECT * FROM students;
```

---

## 3. DISTINCT Keyword

DISTINCT removes duplicate values.

Example

```sql
SELECT DISTINCT department
FROM employees;
```

---

## 4. WHERE Clause

Used to filter records.

```sql
SELECT *
FROM students
WHERE age > 20;
```

---

# SQL Operators

Operators are used in WHERE conditions.

---

## 4.1 Arithmetic Operators

| Operator | Meaning        |
| -------- | -------------- |
| +        | Addition       |
| -        | Subtraction    |
| *        | Multiplication |
| /        | Division       |
| %        | Modulus        |

Example

```sql
SELECT salary + 1000 FROM employees;
```

---

## 4.2 Comparison Operators

| Operator | Meaning            |
| -------- | ------------------ |
| =        | Equal              |
| !=       | Not equal          |
| >        | Greater than       |
| <        | Less than          |
| >=       | Greater than equal |
| <=       | Less than equal    |

Example

```sql
SELECT *
FROM students
WHERE age >= 18;
```

---

## 4.3 Logical Operators

| Operator | Meaning                      |
| -------- | ---------------------------- |
| AND      | Both conditions must be true |
| OR       | One condition must be true   |
| NOT      | Negates condition            |

Example

```sql
SELECT *
FROM students
WHERE age > 18 AND city = 'Delhi';
```

---

## 4.4 Bitwise Operators

| Operator | Meaning |
| -------- | ------- |
| &        | AND     |
| |        | OR      |
| ^        | XOR     |

Example

```sql
SELECT 5 & 3;
```

---

# Important SQL Operators

## AND

```sql
SELECT *
FROM students
WHERE age > 18 AND marks > 80;
```

---

## OR

```sql
SELECT *
FROM students
WHERE city='Delhi' OR city='Mumbai';
```

---

## BETWEEN

```sql
SELECT *
FROM students
WHERE age BETWEEN 18 AND 25;
```

---

## IN

```sql
SELECT *
FROM students
WHERE city IN ('Delhi','Mumbai','Kolkata');
```

---

## NOT

```sql
SELECT *
FROM students
WHERE NOT city='Delhi';
```

---

# LIMIT Clause

Limits number of rows returned.

```sql
SELECT *
FROM students
LIMIT 3;
```

---

# ORDER BY Clause

Sorts results.

Ascending:

```sql
SELECT *
FROM students
ORDER BY age ASC;
```

Descending:

```sql
SELECT *
FROM students
ORDER BY age DESC;
```

---

# Summary

Today learned:

* SELECT statement
* DISTINCT keyword
* WHERE clause
* SQL operators
* LIMIT clause
* ORDER BY clause
