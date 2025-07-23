-- WAQTD name and hiredate of the employee hired before all the employees (first emp)
SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE = (SELECT MIN(HIREDATE) FROM EMP);
