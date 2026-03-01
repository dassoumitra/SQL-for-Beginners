# Day 2 Notes – SQL Data Types, Commands, Keys and Constraints

## SQL Data Types

Data types define what type of data a column can store.

### Numeric Types

* INT
* FLOAT
* DOUBLE

Example

```sql
marks INT
```

---

### String Types

* CHAR
* VARCHAR
* TEXT

Example

```sql
name VARCHAR(50)
```

---

### Date Types

* DATE
* TIME
* DATETIME

Example

```sql
dob DATE
```

---

## Types of SQL Commands

### DDL (Data Definition Language)

Used to define database structure.

Commands:

* CREATE
* ALTER
* DROP
* TRUNCATE

---

### DML (Data Manipulation Language)

Used to modify table data.

Commands:

* INSERT
* UPDATE
* DELETE

---

### DQL (Data Query Language)

Used to retrieve data.

Command:

* SELECT

---

### DCL (Data Control Language)

Used to control access.

Commands:

* GRANT
* REVOKE

---

### TCL (Transaction Control Language)

Used for transactions.

Commands:

* COMMIT
* ROLLBACK
* SAVEPOINT

---

## Keys in SQL

### Primary Key

Uniquely identifies each record in a table.

Properties:

* Unique
* Cannot be NULL

Example

```sql
id INT PRIMARY KEY
```

---

### Foreign Key

Used to link two tables.

Example

```sql
FOREIGN KEY (student_id) REFERENCES students(id)
```

---

### Composite Key

Primary key made from multiple columns.

Example

```sql
PRIMARY KEY(student_id, course_id)
```

---

## Constraints

Constraints ensure data accuracy.

Common constraints:

* PRIMARY KEY
* NOT NULL
* UNIQUE
* DEFAULT

Example

```sql
CREATE TABLE students(
 id INT PRIMARY KEY,
 name VARCHAR(50) NOT NULL,
 email VARCHAR(100) UNIQUE,
 age INT DEFAULT 18
);
```
