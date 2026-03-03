# SQL Interview Questions – Day 4

These questions cover **Aggregate Functions, GROUP BY, HAVING, and SQL Query Order**.

---

## 1. What are aggregate functions in SQL?

Aggregate functions perform calculations on a group of rows and return a single value.

Examples include:

- COUNT()
- SUM()
- AVG()
- MIN()
- MAX()

---

## 2. What does the COUNT() function do?

The COUNT() function returns the number of rows in a table or the number of non-NULL values in a column.

Example:

```sql
SELECT COUNT(*) FROM students;
```

---

## 3. What is the difference between COUNT(*) and COUNT(column_name)?

| COUNT(*) | COUNT(column_name) |
|------|------|
| Counts all rows | Counts only non-NULL values |
| Includes NULL values | Ignores NULL values |

---

## 4. What does the SUM() function do?

The SUM() function calculates the total sum of a numeric column.

Example:

```sql
SELECT SUM(salary) FROM employees;
```

---

## 5. What does the AVG() function do?

The AVG() function calculates the average value of a numeric column.

Example:

```sql
SELECT AVG(marks) FROM students;
```

---

## 6. What is the purpose of MIN() and MAX() functions?

- **MIN()** returns the smallest value in a column.
- **MAX()** returns the largest value in a column.

Example:

```sql
SELECT MIN(price), MAX(price)
FROM products;
```

---

## 7. What is the GROUP BY clause?

The GROUP BY clause is used to group rows that have the same values in specified columns.

It is often used with aggregate functions.

Example:

```sql
SELECT department, COUNT(*)
FROM employees
GROUP BY department;
```

---

## 8. What is the HAVING clause?

HAVING is used to filter grouped results after the GROUP BY clause.

Example:

```sql
SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 50000;
```

---

## 9. What is the difference between WHERE and HAVING?

| WHERE | HAVING |
|------|------|
| Filters rows before grouping | Filters grouped results |
| Used without GROUP BY | Usually used with GROUP BY |

Example:

```sql
SELECT department, COUNT(*)
FROM employees
WHERE salary > 30000
GROUP BY department
HAVING COUNT(*) > 2;
```

---

## 10. What is the general order of a SQL query?

The typical order of a SQL query is:

```
SELECT column(s)
FROM table_name
WHERE condition
GROUP BY column(s)
HAVING condition
ORDER BY column(s);
```

---

## 11. Can HAVING be used without GROUP BY?

Yes, HAVING can be used without GROUP BY when aggregate functions are used.

---

## 12. Why are aggregate functions important?

Aggregate functions help analyze large datasets by summarizing data, such as calculating totals, averages, minimums, and maximum values.

---

## 13. Can aggregate functions be used with WHERE?

Aggregate functions cannot be used directly in the WHERE clause. Instead, they should be used with the HAVING clause.

Example:

```sql
SELECT department, AVG(salary)
FROM employees
GROUP BY department
HAVING AVG(salary) > 40000;
```

---

## 14. Give an example of a query using multiple clauses.

```sql
SELECT department, COUNT(*)
FROM employees
WHERE salary > 30000
GROUP BY department
HAVING COUNT(*) > 2
ORDER BY department;
```

---

## 15. What is the difference between ORDER BY and GROUP BY?

| GROUP BY | ORDER BY |
|------|------|
| Groups rows | Sorts rows |
| Used with aggregate functions | Used to arrange results |
| Creates grouped output | Arranges final output |