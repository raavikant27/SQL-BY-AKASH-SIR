# SQL-BY-AKASH-SIR
# 📘 SQL Most Important Interview Questions (No Answers)

Welcome to the **SQL Interview Questions** repository!  
Below are some of the **most frequently asked and important SQL interview questions** — from subqueries to employee-manager relationships — compiled for mastering interviews.

---

## 📌 TOP INTERVIEW QUESTIONS

### 🔹 Basics & Selection
1. What is the difference between `WHERE` and `HAVING`?
2. What is the difference between `INNER JOIN`, `LEFT JOIN`, `RIGHT JOIN`, and `FULL JOIN`?
3. What are aggregate functions in SQL?
4. What is the use of `GROUP BY` and how does it work?
5. What is the difference between `UNION` and `UNION ALL`?
6. What is the difference between `IN`, `ANY`, `ALL`, and `EXISTS`?

---

### 🔹 Subqueries & Nested Queries
7. WAQTD 2nd Minimum Salary using nested subquery.  
8. WAQTD 5th Maximum Salary using nested subqueries only.  
9. WAQTD Name of the employee earning maximum salary.  
10. WAQTD Empno of the employee earning 2nd maximum salary.  
11. WAQTD Department name of the employee getting 2nd highest salary.  
12. WAQTD 4th Maximum Salary using nested subqueries.  
13. WAQTD Details of the employee who was hired last.  
14. WAQTD Location of the employee who was hired first.  
15. WAQTD Details of employees hired before the first hired employee.  
16. WAQTD Name of employee getting 2nd maximum salary.  

---

### 🔹 IN / ANY / ALL / EXISTS Operator Based
17. WAQTD name and annual salary of the employees if their annual salary is more than all the salesman (use `IN`).  
18. WAQTD employees whose salary is greater than any employee from department 10 (using `ANY`).  
19. WAQTD employees whose salary is greater than all employees of department 30 (using `ALL`).  
20. WAQTD employees who do not belong to any department (using `NOT EXISTS`).  
21. WAQTD employees who belong to at least one department (using `EXISTS`).  

---

### 🔹 Correlated Subquery Based
22. WAQTD employee whose salary is greater than the average salary of their department.  
23. WAQTD employees whose salary is greater than their manager's salary.  
24. WAQTD highest paid employee in each department.  
25. WAQTD employee(s) who joined before their manager.  
26. WAQTD employee(s) who earn more than the average salary of the company.  

---

### 🔹 Ranking Without Rank Functions
27. WAQTD 3rd highest salary without using RANK / DENSE_RANK.  
28. WAQTD 2nd lowest salary using only subqueries.  
29. WAQTD top 3 salaries using subquery logic.  
30. WAQTD bottom 2 employees by salary.  
31. WAQTD employee with exactly median salary.  

---

## 🧑‍💼 EMP & MANAGER RELATIONSHIP QUESTIONS (Subquery-Based)

71. WAQTD Smith's reporting manager's name.  
72. WAQTD Adams's manager's manager name.  
73. WAQTD DNAME of Jones's manager.  
74. WAQTD Miller's manager's salary.  
75. WAQTD Location of Smith's manager's manager.  
76. WAQTD Name of the employees reporting to Blake.  
77. WAQTD Number of employees reporting to King.  
78. WAQTD Details of the employees reporting to Jones.  
79. WAQTD ENAMES of the employees reporting to Blake's manager.  
80. WAQTD Number of employees reporting to Ford's manager.  

---

🧠 **Pro Tip:** Practice these with sample EMP/DEPT tables and build strong logic using nested subqueries.

---

✅ **Author**: Ravikant Singh  
🎓 **Level**: Beginner to Intermediate  
📅 **Last Updated**: July 2025  
# MongoDB Interview Questions and Answers

This README contains a complete set of **MongoDB interview questions and answers**, suitable for freshers, MERN stack developers, and backend developers.

---

## ✅ Basic MongoDB Interview Questions

### 1. What is MongoDB?
MongoDB is a **NoSQL, document-based** database that stores data in JSON-like format (BSON). It's designed for **scalability, flexibility, and performance**.

### 2. What are the advantages of MongoDB?
- Schema-less
- High performance
- Horizontal scaling via sharding
- Indexing support
- Easy to use
- Rich query and aggregation support

### 3. Difference between SQL and NoSQL

| Feature     | SQL (MySQL, PostgreSQL) | NoSQL (MongoDB)     |
|-------------|--------------------------|----------------------|
| Data Format | Tables & Rows            | Documents (BSON/JSON)|
| Schema      | Fixed                    | Flexible             |
| Joins       | Supported                | Not preferred        |
| Scalability | Vertical                 | Horizontal           |

---

## ✅ Core MongoDB Concepts

### 4. What is a Document?
A record in MongoDB, stored as a key-value pair (BSON format).

```json
{
  "name": "Ravi",
  "age": 24,
  "skills": ["React", "Node"]
}
5. What is a Collection?
A collection is a group of MongoDB documents, similar to a table in SQL.

6. What is BSON?
BSON = Binary JSON. MongoDB uses BSON format for faster and efficient storage.

7. What is ObjectId?
A unique identifier automatically generated by MongoDB for each document.

✅ CRUD Operations
8. Insert a Document
js
Copy
Edit
db.users.insertOne({ name: "Ravi", age: 24 });
9. Read/Find Documents
js
Copy
Edit
db.users.find({ name: "Ravi" });
10. Update a Document
js
Copy
Edit
db.users.updateOne(
  { name: "Ravi" },
  { $set: { age: 25 } }
);
11. Delete a Document
js
Copy
Edit
db.users.deleteOne({ name: "Ravi" });
✅ Query Operators
Operator	Purpose
$set	Set/update a field
$inc	Increment a value
$push	Add to an array
$pull	Remove from an array
$gt	Greater than
$in	Match any in array

✅ Advanced MongoDB
12. Indexes
js
Copy
Edit
db.users.createIndex({ name: 1 });
Used to improve the speed of data retrieval.

13. Aggregation Example
js
Copy
Edit
db.users.aggregate([
  { $group: { _id: "$age", total: { $sum: 1 } } }
]);
14. Sorting and Limiting
js
Copy
Edit
db.users.find().limit(5).sort({ age: -1 });
15. What is Replication?
Replication is the process of synchronizing data across multiple servers using replica sets to ensure availability and backup.

16. What is Sharding?
Sharding is the process of splitting data across multiple machines to improve read/write performance.

✅ Miscellaneous
17. Create Database
js
Copy
Edit
use myDatabase
18. Drop Collection/Database
js
Copy
Edit
db.users.drop();         // Drop collection
db.dropDatabase();       // Drop database
19. find() vs findOne()
find() → returns multiple documents (cursor).

findOne() → returns the first matching document.

20. insertOne vs insertMany
insertOne: Inserts a single document.

insertMany: Inserts an array of documents.

✅ MongoDB Relationships
Embedded Documents: Store related data inside one document.

Reference Documents: Use _id of one document in another to establish a relationship.

