#1)inner join 2)left join 3)right join 4)full join 5)left exclusiv 6)right exclusive
CREATE DATABASE JOINS1;
USE JOINS1;

CREATE TABLE STUDENTS1(
ID INT PRIMARY KEY,
NAME VARCHAR(90),
MARKS INT NOT NULL,
GREAD VARCHAR(1)
);

INSERT INTO STUDENTS1
	(ID,NAME,MARKS,GREAD)
VALUES
	(1,"ALICE JOHNSON",95,'A'),
    (2,"BOB SMITH",82,'B'),
    (3,"CHARLIE BROWN",90,'A'),
    (4,"DAISY MILLER",70,'C'),
    (5,"EDWARD WILSON",85,'B'),
    (6,"FIONA DAVIS",92,'A'),
    (7,"GEORGW CLARK",68,'C'),
    (8,"HANNAN LEWIS",80,'B'),
    (9,"LAN WALKER",88,'A'),
    (10,"JANE HALL",72,'C'),
    (11,"KEVIN YOUNG",95,'A'),
    (12,"LAURA SCOTT",84,'B'),
    (13,"MICHAEL GRREN",65,'C'),
    (14,"NATALIE ADAMS",78,'B'),
    (15,"OLIVER THOMAS",91,'A');
    
SELECT * FROM STUDENTS1;

CREATE TABLE LOCATION1(
ID INT PRIMARY KEY,
NAME VARCHAR(60),
ADDRESS VARCHAR(100)
);

INSERT INTO LOCATION1
	(ID,NAME,ADDRESS)
VALUES
    (5,"EDWARD WILSON","MUMBAI"),
    (6,"FIONA DAVIS","PUNE"),
    (7,"GEORGW CLARK","DELHI"),
    (8,"HANNAN LEWIS","BANGLOR"),
    (9,"LAN WALKER","CHAINAI"),
    (10,"JANE HALL","NASHIK");

SELECT * FROM LOCATION1;

#INNER JOIN
 SELECT S.ID,S.NAME,S.MARKS,S.GREAD, L.ADDRESS
 FROM STUDENTS1 S
 INNER JOIN LOCATION1 L
 ON S.ID=L.ID
 ORDER BY L.ADDRESS;
 
#LEFT JOIN
 SELECT S.ID,S.NAME,S.MARKS,S.GREAD, L.ADDRESS
 FROM STUDENTS1 S
 LEFT JOIN LOCATION1 L
 ON S.ID=L.ID;
 
 #RIGHT JOIN
 SELECT S.ID,S.NAME,S.MARKS,S.GREAD, L.ADDRESS
 FROM STUDENTS1 S
 RIGHT JOIN LOCATION1 L
 ON S.ID=L.ID;
 
 #UNION
 SELECT S.ID,S.NAME,S.MARKS,S.GREAD, L.ADDRESS
 FROM STUDENTS1 S
 LEFT JOIN LOCATION1 L
 ON S.ID=L.ID
 UNION
 SELECT S.ID,S.NAME,S.MARKS,S.GREAD, L.ADDRESS
 FROM STUDENTS1 S
 RIGHT JOIN LOCATION1 L
 ON S.ID=L.ID;
 
 #LEFT EXCLUSIVE
 SELECT S.ID,S.NAME,S.MARKS,S.GREAD, L.ADDRESS
 FROM STUDENTS1 S
 LEFT JOIN LOCATION1 L
 ON S.ID=L.ID
 WHERE L.ID IS NULL;
 
 #RIGHT EXCLUSIVE
 SELECT S.ID,S.NAME,S.MARKS,S.GREAD, L.ADDRESS
 FROM STUDENTS1 S
 RIGHT JOIN LOCATION1 L
 ON S.ID=L.ID
 WHERE S.ID IS NULL
 
 
 
 
 

 

