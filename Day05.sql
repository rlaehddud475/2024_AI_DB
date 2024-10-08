CREATE TABLE EMP_FK(
 EMPNO NUMBER(4,0) PRIMARY KEY,
 ENAME VARCHAR2(10) NOT NULL,
 JOB VARCHAR2(9) NOT NULL,
 MGR NUMBER(4),
 HIREDATE DATE,
 SAL NUMBER(7,2),
 COMM NUMBER(7,2),
 DEPTNO NUMBER(2) REFERENCES DEPT (DEPTNO) ON DELETE SET NULL
);

INSERT INTO dept values(50, 'AI','INCHEON');
SELECT * FROM DEPT d ;

INSERT INTO EMP_FK(EMPNO,ENAME,JOB ,DEPTNO) 
VALUES(9999, '이이름', 'CLERK', 50);

SELECT * FROM EMP_FK ef ;

DROP TABLE EMP_FK ;

DELETE FROM DEPT d WHERE DEPTNO=50;

CREATE SEQUENCE SEQ_IDX_EMPFK;
DROP SEQUENCE MEMBER_SEQ;

DROP TABLE "MEMBER" ;

CREATE TABLE MEMBER(
SEQ NUMBER(10) PRIMARY KEY,
EMAIL VARCHAR2(65) UNIQUE NOT NULL,
PASSWORD VARCHAR2(65) NOT NULL,
NAME VARCHAR2(45) NOT NULL,
REG_DT DATE DEFAULT SYSDATE
);

CREATE SEQUENCE MEMBER_SEQ;
SELECT MEMBER_SEQ.CURRVAL FROM DUAL;

INSERT INTO MEMBER(SEQ, EMAIL, PASSWORD,NAME) 
VALUES(MEMBER_SEQ.NEXTVAL, 'USER01@TEST.ORG','1234','사용자01');

SELECT * FROM "MEMBER" m ;