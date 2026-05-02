-- Drop if exists
DROP TABLE IF EXISTS course;
DROP TABLE IF EXISTS student;

-- 1. STUDENT TABLE
CREATE TABLE student (
    rollno INT PRIMARY KEY,
    name VARCHAR(50),
    marks INT,
    grade CHAR(1),
    city VARCHAR(50)
);

-- 2. COURSE TABLE (acts like enrollment)
CREATE TABLE course (
    course_id INT,
    course_name VARCHAR(50),
    rollno INT
);

-- INSERT STUDENTS (20 rows)
INSERT INTO student VALUES
(1, 'Harsha', 95, 'A', 'Hyderabad'),
(2, 'Hari', 78, 'B', 'Chennai'),
(3, 'Fayaz', 82, 'A', 'Bangalore'),
(4, 'Aravind', 74, 'B', 'Delhi'),
(5, 'Anvith', 91, 'A', 'Mumbai'),
(6, 'Arun', 69, 'C', 'Pune'),
(7, 'Shruthi', 88, 'A', 'Kolkata'),
(8, 'Shreya', 92, 'A', 'Hyderabad'),
(9, 'Akshith', 76, 'B', 'Chennai'),
(10, 'Deepak', 64, 'C', 'Bangalore'),
(11, 'Chaitra', 89, 'A', 'Mysore'),
(12, 'Riya', 73, 'B', 'Delhi'),
(13, 'Moukhika', 95, 'A', 'Hyderabad'),
(14, 'Kiran', 68, 'C', 'Vizag'),
(15, 'Sandeep', 81, 'B', 'Pune'),
(16, 'Nitya', 97, 'A', 'Mumbai'),
(17, 'Nikhil', 84, 'A', 'Chennai'),
(18, 'Lavanya', 90, 'A', 'Bangalore'),
(19, 'Rohit', 72, 'B', 'Delhi'),
(20, 'Sneha', 87, 'A', 'Hyderabad');

-- INSERT COURSES (with rollno mapping)

INSERT INTO course VALUES

-- Student 1 → more than 3 courses ✅
(101,'DBMS',1),(102,'OS',1),(103,'CN',1),(104,'AI',1),

-- Student 2
(101,'DBMS',2),(102,'OS',2),

-- Student 3
(101,'DBMS',3),(103,'CN',3),(105,'ML',3),

-- Student 4
(102,'OS',4),

-- Student 5
(101,'DBMS',5),(102,'OS',5),(103,'CN',5),

-- Student 6 → NO courses ❌

-- Student 7
(104,'AI',7),(105,'ML',7),

-- Student 8 → more than 3 courses ✅
(101,'DBMS',8),(102,'OS',8),(103,'CN',8),(104,'AI',8),

-- Student 9
(105,'ML',9),

-- Student 10 → NO courses ❌

-- Student 11
(101,'DBMS',11),

-- Student 12
(102,'OS',12),(103,'CN',12),

-- Student 13
(101,'DBMS',13),(104,'AI',13),(105,'ML',13),

-- Student 14
(106,'DSA',14),

-- Student 15 → more than 3 courses ✅
(101,'DBMS',15),(102,'OS',15),(103,'CN',15),(104,'AI',15),

-- Student 16
(105,'ML',16),

-- Student 17
(101,'DBMS',17),(103,'CN',17),

-- Student 18
(102,'OS',18),(104,'AI',18),(105,'ML',18),

-- Student 19
(101,'DBMS',19),

-- Student 20
(103,'CN',20);