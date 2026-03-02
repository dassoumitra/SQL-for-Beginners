# Day 3 – SELECT Queries, WHERE Clause, Operators

Welcome to **Day 3 of the SQL Learning Series**.

In this section we learn how to **retrieve and filter data from tables**.

---

## Topics Covered

* SELECT statement
* DISTINCT keyword
* WHERE clause
* SQL Operators
* Important operators (AND, OR, BETWEEN, IN, NOT)
* LIMIT clause
* ORDER BY clause

---

## SELECT Statement

The **SELECT statement** is used to retrieve data from a table.

### Syntax

```sql
SELECT column1, column2
FROM table_name;
```

Example

```sql
SELECT * FROM students;
```

`*` means **select all columns**.

---

## DISTINCT Keyword

Used to remove duplicate values.

```sql
SELECT DISTINCT column_name
FROM table_name;
```

Example

```sql
SELECT DISTINCT city
FROM customers;
```

---

## WHERE Clause

Used to filter records.

```sql
SELECT *
FROM students
WHERE age > 20;
```

---

## LIMIT Clause

Used to limit the number of results.

```sql
SELECT *
FROM students
LIMIT 5;
```

---

## ORDER BY Clause

Used to sort the result.

```sql
SELECT *
FROM students
ORDER BY age DESC;
```

---

## Learning Outcome

After completing Day 3 you will understand how to:

* Retrieve data from tables
* Filter records
* Use SQL operators
* Sort and limit results

---

## Next Topic

➡ Day 4 – Aggregate Functions (COUNT, SUM, AVG)
