USE sru;
CREATE TABLE courses
(
courseid INT PRIMARY KEY,
cname VARCHAR(20),
tot INT 
);
CREATE TABLE student
(
rno INT PRIMARY KEY ,
sname VARCHAR(20),
cid INT,
marks INT ,
FOREIGN KEY (cid) references courses(courseid)
);
INSERT INTO courses (courseid, cname, tot) VALUES
(1, 'CSE', 100),
(2, 'ECE', 75),
(3, 'EEE', 75),
(4, 'AIML', 100),
(5, 'CIVIL', 100),
(6, 'MECH', 100),
(7, 'DS', 100);

INSERT INTO student (rno, sname, cid, marks) VALUES
(12, 'Harsha', 1, 99),
(14, 'Rohith', 4, 95),
(15, 'Shiva', 4, 91),
(16, 'Rahul', 4, 90),
(83, 'Arun', 1, 97),
(32, 'SNR', 3, 73),
(18, 'Sri', 2, 70),
(1, 'Krishna', NULL, NULL),
(2, 'Arjuna', NULL, NULL),
(10, 'Dheeraj', 5, 34);


SELECT * FROM student as S
JOIN courses as C 
ON S.cid=C.courseid;

SELECT * FROM student as S
LEFT JOIN courses as C 
ON S.cid=C.courseid;

SELECT * FROM student as S
RIGHT JOIN courses as C 
ON S.cid=C.courseid;


SELECT * FROM student as S
LEFT JOIN courses as C 
ON S.cid=C.courseid
UNION
SELECT * FROM student as S
RIGHT JOIN courses as C 
ON S.cid=C.courseid;


SELECT * FROM student as S 
LEFT JOIN courses as C 
ON S.cid=C.courseid
WHERE C.courseid is NULL;

SELECT * FROM student as S 
RIGHT JOIN courses as C 
ON S.cid=C.courseid
WHERE s.cid is NULL;


CREATE TABLE Employee (
    id INT PRIMARY KEY,
    name VARCHAR(20),
    manager_id INT,
    FOREIGN KEY (manager_id) REFERENCES Employee(id)
);

INSERT INTO Employee (id, name, manager_id) VALUES
(103, 'casey', NULL);
INSERT INTO Employee (id, name, manager_id) VALUES
(101, 'adam', 103),
(104, 'donald', 103),
(102, 'bob', 104);

SELECT * FROM Employee;


SELECT Emp2.name as EmployeeName,Emp1.name as Managername  FROM Employee as Emp1 
JOIN Employee as Emp2 
ON Emp1.id=Emp2.manager_id;


SELECT * FROM EMPLOYEE 
UNION 
SELECT * FROM EMPLOYEE;

SELECT * FROM EMPLOYEE 
UNION ALL
SELECT * FROM EMPLOYEE;