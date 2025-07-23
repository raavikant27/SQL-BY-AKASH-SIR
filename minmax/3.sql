-- WAQTD details of the employee who has greatest EMPNO
SELECT*
FROM EMP
WHERE EMPNO=(SELECT MAX(EMPNO) FROM EMP);