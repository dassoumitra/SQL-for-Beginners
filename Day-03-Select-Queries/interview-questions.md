# Day 3 SQL Interview Questions

### 1. What is the SELECT statement?

SELECT retrieves data from one or more tables.

Example:

```sql
SELECT * FROM students;
```

---

### 2. What is DISTINCT?

DISTINCT removes duplicate values from query results.

```sql
SELECT DISTINCT city FROM students;
```

---

### 3. What is the WHERE clause?

WHERE filters rows based on conditions.

```sql
SELECT * FROM students WHERE age > 20;
```

---

### 4. What is ORDER BY?

ORDER BY sorts query results.

```sql
SELECT * FROM students ORDER BY age DESC;
```

---

### 5. What is LIMIT?

LIMIT restricts the number of rows returned.

```sql
SELECT * FROM students LIMIT 5;
```
