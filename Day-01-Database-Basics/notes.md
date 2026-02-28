# Day 1 – SQL Database Fundamentals

## 1. What is a Database?

A **database** is an organized collection of data that is stored electronically and can be easily accessed, managed, and updated.

Example:
A college database may contain information about students, teachers, courses, and marks.

Example table:

| id | name  | marks |
| -- | ----- | ----- |
| 1  | Rahul | 85    |
| 2  | Priya | 90    |
| 3  | Amit  | 78    |

In this table:

* `id`, `name`, and `marks` are columns
* Each row represents one record.

---

## 2. What is DBMS?

**DBMS (Database Management System)** is software that helps users create, manage, and manipulate databases.

Functions of DBMS:

* Store data
* Retrieve data
* Update data
* Delete data
* Control access to data

Examples of DBMS:

* MySQL
* Oracle
* PostgreSQL
* Microsoft SQL Server

---

## 3. What is RDBMS?

**RDBMS (Relational Database Management System)** is a type of DBMS where data is stored in the form of **tables with relationships between them**.

Characteristics:

* Data stored in tables
* Tables can be connected using keys
* Reduces data redundancy

Examples:

* MySQL
* PostgreSQL
* Oracle
* SQL Server

Example:

Students Table

| student_id | name  |
| ---------- | ----- |
| 1          | Rahul |
| 2          | Priya |

Courses Table

| course_id | course_name |
| --------- | ----------- |
| 101       | DBMS        |
| 102       | Java        |

---

## 4. What is SQL?

**SQL (Structured Query Language)** is a language used to communicate with relational databases.

SQL is used to:

* Create databases
* Create tables
* Insert data
* Retrieve data
* Update data
* Delete data

SQL is widely used with relational databases like MySQL, PostgreSQL, Oracle, and SQL Server.

---

## 5. What is a Table?

A **table** is a structured format used to store data in rows and columns.

Example table: `students`

| id | name  | marks |
| -- | ----- | ----- |
| 1  | Rahul | 85    |
| 2  | Priya | 90    |
| 3  | Amit  | 78    |

---

## 6. Row (Record)

A **row** represents a single entry or record in a table.

Example row:

| id | name  | marks |
| -- | ----- | ----- |
| 1  | Rahul | 85    |

Each row stores information about one entity.

---

## 7. Column (Field)

A **column** represents an attribute or property of the data.

Example columns:

* id
* name
* marks

Each column contains values of the same type.

---

## 8. Primary Key

A **Primary Key** is a column (or combination of columns) that uniquely identifies each record in a table.

Properties:

* Must be unique
* Cannot contain NULL values
* Only one primary key per table

Example:

| id (Primary Key) | name  |
| ---------------- | ----- |
| 1                | Rahul |
| 2                | Priya |

---

## 9. Foreign Key

A **Foreign Key** is a column used to create a relationship between two tables.

Example:

Students Table

| student_id | name  |
| ---------- | ----- |
| 1          | Rahul |

Enrollments Table

| enrollment_id | student_id |
| ------------- | ---------- |
| 1             | 1          |

Here:

* `student_id` in the Enrollments table is a **foreign key**
* It refers to the `student_id` in the Students table.

---

## 10. First SQL Commands

Create a database:

```sql
CREATE DATABASE college;
```

Select the database:

```sql
USE college;
```

Create a table:

```sql
CREATE TABLE students(
 id INT,
 name VARCHAR(50),
 marks INT
);
```

---

## Summary

In Day 1 you learned:

* What a database is
* What DBMS and RDBMS are
* What SQL is
* Tables, rows, and columns
* Primary keys
* Foreign keys
* Basic SQL commands

These concepts form the **foundation of SQL and database management**.
