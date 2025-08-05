# SQL Table Creation and Modification Commands

This SQL script demonstrates how to create, modify, rename, and drop columns from tables in Oracle SQL.

---

## 📌 1. Create Table `STUDENT`

```sql
CREATE TABLE STUDENT (
    STUDENTID INT PRIMARY KEY,
    STUDENTNAME VARCHAR(20) NOT NULL,
    EMAIL VARCHAR(50) UNIQUE
);
STUDENTID: Primary Key

STUDENTNAME: Cannot be NULL

EMAIL: Must be unique
 ```
📌 2. View All Tables in the Database

SELECT * FROM TAB;
This command shows all tables created in the current schema.
 ```
```
📌 3. Rename Table
```
RENAME DEPTNO TO DEPARTMANET;
Renames existing table DEPTNO to DEPARTMANET.
```
```
📌 4. Alter Table: Add a New Column

ALTER TABLE DEPARTMANET ADD DEPARTMENTID INT;
Adds a new column DEPARTMENTID to the DEPARTMANET table.
```
```
📌 5. Drop a Column from a Table

ALTER TABLE STUDENT DROP COLUMN STUDENTNAME;
Deletes the STUDENTNAME column from the STUDENT table.
```
```
📌 6. Describe Table Structure

DESC STUDENT;
Shows structure of the STUDENT table after modifications.

Output:

Column Name	Null?	Data Type
STUDENTID	NOT NULL	NUMBER(38)
EMAIL	(nullable)	VARCHAR2(50)
```
```
📌 7. Modify Data Type of a Column

ALTER TABLE STUDENT MODIFY EMAIL VARCHAR(100);
Changes the EMAIL column's data type to allow longer values (optional example).
```
```
✅ Summary
This file demonstrates how to:

Create a table with constraints

View tables

Rename tables

Add or drop columns

Modify column data types
```