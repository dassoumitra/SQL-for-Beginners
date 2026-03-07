# Day 07 - SQL Subqueries

In this section, we learn how to use **subqueries (nested queries)** in SQL.  
A subquery is a query inside another SQL query.

Subqueries are commonly used with **SELECT, WHERE, FROM, and HAVING clauses** to filter or derive data from another query.

---

## Topics Covered

- SQL Subqueries
- Types of Subqueries
  - Single Row Subquery
  - Multiple Row Subquery
  - Correlated Subquery
- Subquery with SELECT
- Subquery with WHERE
- Subquery with FROM
- Subquery Operators
  - IN
  - EXISTS
  - ANY
  - ALL

---

## Example

```sql
SELECT name
FROM students
WHERE marks > (
    SELECT AVG(marks) FROM students
);