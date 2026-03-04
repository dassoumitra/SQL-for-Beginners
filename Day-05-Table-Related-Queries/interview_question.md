# SQL Interview Questions - Day 05 (Table Related Queries)

## 1. What is the UPDATE statement in SQL?

The UPDATE statement is used to modify existing records in a table. It allows you to change the values of one or more columns for rows that match a specified condition.

Example:

UPDATE students
SET marks = 90
WHERE id = 1;

If the WHERE clause is omitted, all rows in the table will be updated.

---

## 2. What is the DELETE statement?

The DELETE statement is used to remove one or more rows from a table based on a specified condition.

Example:

DELETE FROM students
WHERE id = 3;

If no condition is specified, all rows will be removed from the table.

---

## 3. What is the difference between DELETE, TRUNCATE, and DROP?

DELETE  
Removes specific rows from a table using a WHERE condition. The table structure remains unchanged.

TRUNCATE  
Removes all rows from a table quickly but keeps the table structure.

DROP  
Deletes the entire table including its structure, data, and indexes.

---

## 4. What is a Foreign Key?

A Foreign Key is a column or group of columns used to create a relationship between two tables. It ensures referential integrity between the parent table and the child table.

Example:

FOREIGN KEY (dept_id) REFERENCES department(dept_id)

---

## 5. What is Cascading in SQL?

Cascading is a feature used with foreign keys that automatically propagates changes from the parent table to the child table.

Common cascading options:

- ON DELETE CASCADE
- ON UPDATE CASCADE

---

## 6. What is ON DELETE CASCADE?

ON DELETE CASCADE automatically deletes rows in the child table when the related row in the parent table is deleted.

Example:

FOREIGN KEY (dept_id)
REFERENCES department(dept_id)
ON DELETE CASCADE;

---

## 7. What is ON UPDATE CASCADE?

ON UPDATE CASCADE automatically updates the foreign key values in the child table when the referenced primary key in the parent table is updated.

Example:

FOREIGN KEY (dept_id)
REFERENCES department(dept_id)
ON UPDATE CASCADE;

---

## 8. What is ALTER TABLE?

ALTER TABLE is used to modify the structure of an existing table. It allows adding, deleting, or modifying columns.

Example:

ALTER TABLE students
ADD age INT;

---

## 9. How do you add a column to a table?

You can add a column using the ALTER TABLE statement.

Example:

ALTER TABLE students
ADD age INT;

---

## 10. How do you remove a column from a table?

You can remove a column using the DROP COLUMN command.

Example:

ALTER TABLE students
DROP COLUMN age;

---

## 11. How do you rename a table?

You can rename a table using the ALTER TABLE command.

Example:

ALTER TABLE students
RENAME TO student_details;

---

## 12. What is the difference between CHANGE and MODIFY?

CHANGE  
Used to rename a column and change its definition.

Example:

ALTER TABLE students
CHANGE name student_name VARCHAR(50);

MODIFY  
Used to change only the datatype or constraint of a column.

Example:

ALTER TABLE students
MODIFY marks FLOAT;

---

## 13. What happens if UPDATE is used without WHERE?

If UPDATE is used without a WHERE clause, all rows in the table will be updated.

Example:

UPDATE students
SET marks = 80;

This will update marks for every row.

---

## 14. Can DELETE remove all rows from a table?

Yes, DELETE can remove all rows if no condition is specified.

Example:

DELETE FROM students;

However, the table structure will still remain.

---

## 15. Why is cascading important in databases?

Cascading helps maintain referential integrity between related tables. It ensures that related data is automatically updated or deleted, preventing orphan records and keeping the database consistent.