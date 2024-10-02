SELECT * FROM EMP e ,DEPT d;

SELECT e.empno, e.ename,e.sal,s.GRADE FROM EMP e , SALGRADE s 
WHERE e.SAL BETWEEN s.LOSAL AND s.HISAL ;

SELECT e1.empno,e1.ename,e2.ENAME, e2.JOB FROM EMP e1,EMP e2
WHERE e1.mgr=e2.EMPNO;



SELECT d.*, e.ename FROM DEPT d ,EMP e WHERE d.DEPTNO =e.DEPTNO (+);
SELECT e.ENAME , d.* FROM EMP e , DEPT d 
WHERE e.DEPTNO (+) =d.DEPTNO;

CREATE TABLE EMP2 AS select * FROM EMP;
SELECT * FROM EMP2;
INSERT INTO EMP2(EMPNO, ENAME, JOB, DEPTNO) VALUES(9999,'마이콜','CLERK',50);



SELECT E.EMPNO,E.ENAME,D.DEPTNO, D.DNAME 
FROM EMP2 E FULL OUTER JOIN DEPT D ON E.DEPTNO = D.DEPTNO ;
SELECT EMPNO, ENAME,
(SELECT D.DNAME FROM DEPT D WHERE D.DEPTNO = E.DEPTNO) DNAME
FROM EMP e ; 