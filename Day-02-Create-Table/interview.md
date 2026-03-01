# Day 2 – SQL Interview Questions

These questions are commonly asked in **SQL interviews and technical viva**.
They are based on Day-2 topics:

* SQL Data Types
* SQL Command Types
* Database and Table Queries
* Keys
* Constraints

---

# Basic SQL Interview Questions

### 1. What is SQL?

SQL (Structured Query Language) is a language used to manage and manipulate relational databases.
It is used to create databases, insert data, retrieve data, update records, and delete records.

---

### 2. What are SQL Data Types?

SQL data types define the type of data that can be stored in a column.

Examples:

* INT
* VARCHAR
* DATE
* FLOAT

Example:

```sql
age INT
```

---

### 3. What is the difference between CHAR and VARCHAR?

| CHAR                       | VARCHAR                  |
| -------------------------- | ------------------------ |
| Fixed length               | Variable length          |
| Uses full allocated space  | Uses only required space |
| Faster for fixed size data | More flexible            |

Example:

```sql
name CHAR(10)
```

```sql
name VARCHAR(10)
```

---

### 4. What are DDL commands?

DDL (Data Definition Language) commands are used to define or modify database structure.

Examples:

* CREATE
* ALTER
* DROP
* TRUNCATE

Example:

```sql
CREATE TABLE students(
 id INT,
 name VARCHAR(50)
);
```

---

### 5. What are DML commands?

DML (Data Manipulation Language) commands are used to modify data inside tables.

Examples:

* INSERT
* UPDATE
* DELETE

Example:

```sql
INSERT INTO students VALUES(1,'Rahul');
```

---

### 6. What is DQL?

DQL (Data Query Language) is used to retrieve data from the database.

Command:

```sql
SELECT * FROM students;
```

---

### 7. What is a Primary Key?

A Primary Key is a column that uniquely identifies each record in a table.

Properties:

* Unique
* Cannot contain NULL values

Example:

```sql
id INT PRIMARY KEY
```

---

### 8. What is a Foreign Key?

A Foreign Key is a column used to create a relationship between two tables.

Example:

```sql
FOREIGN KEY(student_id) REFERENCES students(id)
```

---

### 9. What is a Constraint?

A constraint is a rule applied to a table column to ensure data accuracy.

Examples:

* PRIMARY KEY
* NOT NULL
* UNIQUE
* DEFAULT

---

### 10. What is the NOT NULL constraint?

It ensures that a column cannot contain NULL values.

Example:

```sql
name VARCHAR(50) NOT NULL
```

---

### 11. What is the UNIQUE constraint?

The UNIQUE constraint ensures that all values in a column are different.

Example:

```sql
email VARCHAR(100) UNIQUE
```

---

### 12. What is the DEFAULT constraint?

It assigns a default value when no value is specified.

Example:

```sql
age INT DEFAULT 18
```

---

### 13. What is the difference between DELETE and TRUNCATE?

| DELETE                | TRUNCATE         |
| --------------------- | ---------------- |
| Removes specific rows | Removes all rows |
| Can use WHERE clause  | Cannot use WHERE |
| Slower                | Faster           |

---

### 14. What is the difference between DROP and TRUNCATE?

| DROP                     | TRUNCATE              |
| ------------------------ | --------------------- |
| Deletes table structure  | Keeps table structure |
| Removes table completely | Only removes data     |

---

### 15. What are SQL Keys?

Keys are used to uniquely identify records and create relationships between tables.

Types of keys:

* Primary Key
* Foreign Key
* Composite Key
* Candidate Key

---
# SQL Keys (Short Definitions)

SQL keys are used to **uniquely identify records in a table and create relationships between tables**.

---

## 1. Primary Key

A **Primary Key** is a column or set of columns that **uniquely identifies each record in a table**.

**Properties**

* Must be unique
* Cannot contain NULL values
* Each table can have only one primary key

Example:

```sql
id INT PRIMARY KEY
```

---

## 2. Foreign Key

A **Foreign Key** is a column that **creates a relationship between two tables** by referencing the **Primary Key of another table**.

Example:

```sql
FOREIGN KEY(student_id) REFERENCES students(id)
```

---

## 3. Candidate Key

A **Candidate Key** is a column or set of columns that **can uniquely identify records in a table** and **can potentially be chosen as the Primary Key**.

Example:
If both `id` and `email` are unique, both are candidate keys.

---

## 4. Composite Key

A **Composite Key** is a **Primary Key made from two or more columns** that together uniquely identify a record.

Example:

```sql
PRIMARY KEY(student_id, course_id)
```

---

## 5. Unique Key

A **Unique Key** ensures that **all values in a column are unique**.

Difference from Primary Key:

* Unique key can allow **one NULL value**
* A table can have **multiple unique keys**

Example:

```sql
email VARCHAR(100) UNIQUE
```

---

## 6. Alternate Key

An **Alternate Key** is a **candidate key that is not selected as the Primary Key**.

Example:
If `id` is the primary key and `email` is also unique, then `email` becomes an alternate key.

---



# Practice Tip

Before interviews, make sure you understand:

* SQL Data Types
* SQL Command Types
* Keys
* Constraints
* Basic Queries

These topics form the **foundation of SQL interviews**.
