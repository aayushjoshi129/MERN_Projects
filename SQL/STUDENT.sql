CREATE DATABASE STUDENT_EXAM;

USE STUDENT_EXAM;

CREATE TABLE STUDENTS (STUDENT_ID INT, STUDENT_NAME VARCHAR(255));

INSERT INTO STUDENTS VALUES (1, 'ALICE'), (2,'BOB'), (13,'JOHN'), (6, 'ALEX');

CREATE TABLE SUBJECTS (SUBJECT_NAME VARCHAR(255));

INSERT INTO SUBJECTS VALUES ('MATH'), ('PHYSICS'), ('PROGRAMMING');

CREATE TABLE EXAMINATIONS (STUDENT_ID INT, SUBJECT_NAME VARCHAR(255));

INSERT INTO EXAMINATIONS VALUES (1, 'MATH'), (1,'PHYSICS'), (1,'PROGRAMMING'), (2, 'PROGRAMMING'), (1,'PHYSICS'), (1,'MATH'), (13, 'MATH'), (13, 'PROGRAMMING'), (13, 'PHYSICS'), (2,'MATH'), (1,'MATH');



SELECT S.STUDENT_ID, S.STUDENT_NAME, SUB.SUBJECT_NAME, COUNT(E.SUBJECT_NAME) AS ATTENDED_EXAMS FROM SUBJECTS SUB CROSS JOIN STUDENTS S LEFT JOIN 
EXAMINATIONS E ON S.STUDENT_ID = E.STUDENT_ID AND SUB.SUBJECT_NAME = E.SUBJECT_NAME GROUP BY S.STUDENT_ID, S.STUDENT_NAME, SUB.SUBJECT_NAME
ORDER BY S.STUDENT_ID, STUDENT_NAME;