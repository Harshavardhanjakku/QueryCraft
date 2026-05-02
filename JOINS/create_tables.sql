-- College Result Management
DROP TABLE IF EXISTS students;
DROP TABLE teachers;
DROP TABLE courses;

CREATE TABLE students (
    student_id INT PRIMARY KEY,
    name VARCHAR(50),
    age INT,
    department VARCHAR(50),
    city VARCHAR(50)
);
CREATE TABLE courses (
    course_id INT PRIMARY KEY,
    course_name VARCHAR(50),
    department VARCHAR(50),
    credits INT,
    faculty VARCHAR(50)
);
CREATE TABLE results (
    result_id INT PRIMARY KEY,
    student_id INT,
    course_id INT,
    marks INT,
    grade VARCHAR(2)
);
INSERT INTO students VALUES
(1,'Arjun',20,'CSE','Hyderabad'),
(2,'Sneha',21,'ECE','Chennai'),
(3,'Rahul',22,'CSE','Bangalore'),
(4,'Priya',20,'EEE','Hyderabad'),
(5,'Kiran',23,'MECH','Pune'),
(6,'Divya',21,'CSE','Delhi'),
(7,'Ravi',22,'ECE','Mumbai'),
(8,'Anjali',20,'CSE','Hyderabad'),
(9,'Vikram',24,'EEE','Chennai'),
(10,'Pooja',21,'MECH','Delhi'),
(11,'Amit',22,'CSE','Pune'),
(12,'Neha',20,'ECE','Mumbai'),
(13,'Suresh',23,'EEE','Hyderabad'),
(14,'Kavya',21,'CSE','Bangalore'),
(15,'Manoj',22,'MECH','Chennai'),
(16,'Nisha',20,'CSE','Delhi'),
(17,'Tarun',23,'ECE','Hyderabad'),
(18,'Swathi',21,'EEE','Pune'),
(19,'Rohit',22,'CSE','Mumbai'),
(20,'Meena',20,'MECH','Hyderabad');
INSERT INTO courses VALUES
(101,'DBMS','CSE',4,'Ramesh'),
(102,'OS','CSE',4,'Suresh'),
(103,'Networks','CSE',3,'Kiran'),
(104,'Signals','ECE',4,'Anil'),
(105,'VLSI','ECE',3,'Prasad'),
(106,'Machines','EEE',4,'Ravi'),
(107,'Power Systems','EEE',3,'Reddy'),
(108,'Thermodynamics','MECH',4,'Naresh'),
(109,'Fluid Mechanics','MECH',3,'Mahesh'),
(110,'AI','CSE',4,'Raj'),
(111,'ML','CSE',4,'Kumar'),
(112,'DSP','ECE',3,'Arvind'),
(113,'Control Systems','EEE',4,'Venkat'),
(114,'Robotics','MECH',3,'Ajay'),
(115,'Cyber Security','CSE',3,'Teja'),
(116,'Embedded Systems','ECE',4,'Srinivas'),
(117,'Electrical Circuits','EEE',3,'Hari'),
(118,'CAD','MECH',3,'Naveen'),
(119,'Data Mining','CSE',4,'Mani'),
(120,'IoT','ECE',3,'Santosh');
INSERT INTO results VALUES
(1,1,101,85,'A'),
(2,2,104,78,'B'),
(3,3,102,92,'A'),
(4,4,106,65,'C'),
(5,5,108,70,'B'),
(6,6,110,95,'A'),
(7,7,105,60,'C'),
(8,8,103,88,'A'),
(9,9,107,72,'B'),
(10,10,109,66,'C'),
(11,11,111,90,'A'),
(12,12,112,75,'B'),
(13,13,113,80,'A'),
(14,14,115,89,'A'),
(15,15,114,67,'C'),
(16,16,119,93,'A'),
(17,17,116,74,'B'),
(18,18,117,69,'C'),
(19,19,101,82,'A'),
(20,20,118,71,'B');
