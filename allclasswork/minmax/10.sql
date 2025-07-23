-- WAQTD name and hiredate of the employees hired at the last

-- 
SELECT ENAME, HIREDATE
FROM EMP
WHERE HIREDATE = (SELECT MAX(HIREDATE) FROM EMP);
