SELECT *, SAL * 12 AS ANNUAL_SALARY
FROM EMP
WHERE SAL = (SELECT MIN(SAL) FROM EMP);
