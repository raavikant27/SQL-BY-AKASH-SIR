-- WAQTD name of the employee earning minimum salary

-- 

SELECT ENAME
FROM EMP
WHERE SAL=(SELECT MIN(SAL) FROM EMP);