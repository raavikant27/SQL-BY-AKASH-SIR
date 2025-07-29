# 📘 SQL Self Join Assignment

This assignment includes 12 SQL queries based on **self-joins** using the `EMP` table from the Oracle HR schema. Each query demonstrates how employees relate to their managers using the `MGR` and `EMPNO` columns.

---

### ✅ 1. Get names of employees and their managers who work as CLERK
```sql
SELECT E1.ENAME AS EMPLOYEE, E2.ENAME AS MANAGER
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO
  AND E1.JOB = 'CLERK';
✅ 2. Get employee name and manager's designation if the manager works in dept 10 or 20
sql
Copy
Edit
SELECT E1.ENAME, E2.JOB
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO
  AND E2.DEPTNO IN (10, 20);
✅ 3. Get name of the employee and manager's salary if both earn more than 2300
sql
Copy
Edit
SELECT 
  E1.ENAME AS EMPLOYEE_NAME, 
  E1.SAL AS EMPLOYEE_SALARY, 
  E2.ENAME AS MANAGER_NAME, 
  E2.SAL AS MANAGER_SALARY
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO
  AND E1.SAL > 2300
  AND E2.SAL > 2300;
✅ 4. Get employee name and manager’s hiredate if employee was hired before '01-JAN-1982'
sql
Copy
Edit
SELECT E1.ENAME AS EMPLOYEE_NAME, E2.HIREDATE AS MANAGER_HIREDATE
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO
  AND E1.HIREDATE < TO_DATE('01-JAN-1982', 'DD-MON-YYYY');
✅ 5. Get employee name and manager’s commission
Conditions:

Employee is a SALESMAN

Manager works in department 30

sql
Copy
Edit
SELECT 
  E1.ENAME AS EMPLOYEE, 
  E2.ENAME AS MANAGER, 
  E2.COMM AS MANAGER_COMM
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO
  AND E1.JOB = 'SALESMAN'
  AND E2.DEPTNO = 30;
✅ 6. Get employee name, manager name, and their salaries if employee earns more than manager
sql
Copy
Edit
SELECT
  E1.ENAME AS EMPLOYEE,
  E1.SAL AS EMPLOYEE_SALARY,
  E2.ENAME AS MANAGER,
  E2.SAL AS MANAGER_SALARY
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO
  AND E1.SAL > E2.SAL;
✅ 7. Get employee and manager names with their hire dates if manager was hired before the employee
sql
Copy
Edit
SELECT
  E1.ENAME AS EMPLOYEE,
  E1.HIREDATE AS EMP_HIREDATE,
  E2.ENAME AS MANAGER_NAME,
  E2.HIREDATE AS MGR_HIREDATE
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO
  AND E1.HIREDATE > E2.HIREDATE;
✅ 8. Get employee and manager names if both work in the same job
sql
Copy
Edit
SELECT 
  E1.ENAME AS EMPLOYEE_NAME,
  E1.JOB AS EMPLOYEE_JOB,
  E2.ENAME AS MANAGER_NAME,
  E2.JOB AS MANAGER_JOB
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO
  AND E1.JOB = E2.JOB;
✅ 9. Get employee and manager names where the manager is working as an actual MANAGER
sql
Copy
Edit
SELECT 
  E1.ENAME AS EMPLOYEE,
  E2.ENAME AS MANAGER
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO
  AND E2.JOB = 'MANAGER';
✅ 10. Get employee and manager names with their annual salaries
Conditions:

Employee works in dept 10 or 20

Manager’s salary is greater than employee’s salary

sql
Copy
Edit
SELECT
  E1.ENAME AS EMPLOYEE,
  E1.SAL * 12 AS EMP_A_SAL,
  E2.ENAME AS MANAGER,
  E2.SAL * 12 AS MGR_A_SAL
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO
  AND E1.DEPTNO IN (10, 20)
  AND E2.SAL > E1.SAL;
✅ 11. Get employee name and manager’s designation for all employees
sql
Copy
Edit
SELECT
  E1.ENAME AS EMPLYEE,
  E2.JOB AS MGR_DESIGNATION
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO;
✅ 12. Get employee name and manager’s salary if manager’s salary ends with 50
sql
Copy
Edit
SELECT 
  E1.ENAME AS EMPLOYEE,
  E2.SAL AS MANAGER_SALARY
FROM EMP E1, EMP E2
WHERE E1.MGR = E2.EMPNO
  AND TO_CHAR(E2.SAL) LIKE '%50';
📌 Notes:
E1 and E2 are aliases for the same EMP table (Self Join).

MGR column holds the manager’s EMPNO.

Use of TO_CHAR() helps in pattern-matching numeric values.

