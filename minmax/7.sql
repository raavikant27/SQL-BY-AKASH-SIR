-- WAQTD details of the employees having the least hiredate
SELECT *
FROM EMP
WHERE HIREDATE = (SELECT MIN(HIREDATE) FROM EMP);
