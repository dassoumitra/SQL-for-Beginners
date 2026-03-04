# SQL Table Related Queries

## 1. UPDATE

The UPDATE statement is used to modify existing records in a table.

Syntax:

UPDATE table_name
SET column1 = value1
WHERE condition;

Example:

UPDATE students
SET marks = 90
WHERE id = 1;

If the WHERE clause is not used, all rows in the table will be updated.

---

## 2. DELETE

The DELETE statement is used to remove records from a table.

Syntax:

DELETE FROM table_name
WHERE condition;

Example:

DELETE FROM students
WHERE id = 3;

Delete all rows:

DELETE FROM students;

Note: This removes data but keeps the table structure.

---

## 3. Cascading in Foreign Keys

Cascading ensures that changes in a parent table automatically reflect in the child table.

Parent Table Example:

department

Child Table Example:

employee

Foreign keys maintain relationships between these tables.

---

## 3.1 ON DELETE CASCADE

If a row in the parent table is deleted, all related rows in the child table are automatically deleted.

Example:

FOREIGN KEY (dept_id)
REFERENCES department(dept_id)
ON DELETE CASCADE;

---

## 3.2 ON UPDATE CASCADE

If a primary key value in the parent table changes, the corresponding foreign key values in the child table are automatically updated.

Example:

FOREIGN KEY (dept_id)
REFERENCES department(dept_id)
ON UPDATE CASCADE;

---

## 4. ALTER TABLE

The ALTER TABLE command is used to modify the structure of an existing table.

Operations include:

- Add column
- Drop column
- Rename table
- Change column name
- Modify column datatype

---

## 4.1 ADD COLUMN

Adds a new column to a table.

Example:

ALTER TABLE students
ADD age INT;

---

## 4.2 DROP COLUMN

Removes a column from a table.

Example:

ALTER TABLE students
DROP COLUMN age;

---

## 4.3 RENAME TABLE

Renames an existing table.

Example:

ALTER TABLE students
RENAME TO student_details;

---

## 4.4 CHANGE COLUMN

Renames a column and changes its definition (MySQL).

Example:

ALTER TABLE students
CHANGE name student_name VARCHAR(50);

---

## 4.5 MODIFY COLUMN

Changes the datatype or constraint of a column.

Example:

ALTER TABLE students
MODIFY marks FLOAT;