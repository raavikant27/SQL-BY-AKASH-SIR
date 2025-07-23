-- WAQTD name, salary, and commission of the employee earning maximum commission
 SELECT ENAME,SAL,COMM
 FROM EMP
 WHERE COMM=(SELECT MAX(COMM) FROM EMP);