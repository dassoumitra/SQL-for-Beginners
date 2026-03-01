# Day 2 – SQL Data Types, Commands, Keys and Constraints

Welcome to **Day 2 of the SQL Learning Series**.

In this section we learn about:

* SQL Data Types
* Types of SQL Commands
* Database Related Queries
* Table Related Queries
* SQL Keys
* SQL Constraints

These topics help us understand how databases and tables are created and managed.

---

## Topics Covered

### 1. SQL Data Types

Defines the type of data that can be stored in a column.

Examples:

* INT
* VARCHAR
* DATE
* FLOAT

---

### 2. SQL Command Categories

SQL commands are divided into:

* DDL – Data Definition Language
* DML – Data Manipulation Language
* DQL – Data Query Language
* DCL – Data Control Language
* TCL – Transaction Control Language

---

### 3. Database Related Queries

Commands used to create and manage databases.

Examples:

```sql
CREATE DATABASE college;
SHOW DATABASES;
USE college;
DROP DATABASE college;
```

---

### 4. Table Related Queries

Commands used to create and manage tables.

Example:

```sql
CREATE TABLE students(
 id INT,
 name VARCHAR(50),
 age INT
);
```

---

### 5. Keys in SQL

Keys help uniquely identify records and create relationships between tables.

Types of keys:

* Primary Key
* Foreign Key
* Candidate Key
* Composite Key

---

### 6. Constraints

Constraints enforce rules on table columns.

Common constraints:

* PRIMARY KEY
* NOT NULL
* UNIQUE
* DEFAULT

---

## Learning Source

Concepts learned from the **Apna College SQL course**.

Video section studied:
**30:00 – 1:12:00**

---

## Next Topic

➡ Day 3 – INSERT INTO (Adding Data to Tables)
