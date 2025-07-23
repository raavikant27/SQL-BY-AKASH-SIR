-- WAQTD name and commission of the employee who earns minimum commission
SELECT ENAME, COMM
FROM EMP
WHERE COMM = (SELECT MIN(COMM) FROM EMP);
