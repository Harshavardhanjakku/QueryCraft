SELECT * FROM student;
DELETE FROM student 
where rollno=100;
INSERT INTO student (rollno, name, marks, grade, city) VALUES
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
(16, 'Nitya', 97, 'B', 'Mumbai'),
(17, 'Nikhil', 84, 'A', 'Chennai'),
(18, 'Lavanya', 90, 'A', 'Bangalore'),
(19, 'Rohit', 72, 'B', 'Delhi'),
(20, 'Sneha', 87, 'A', 'Hyderabad');

SET SQL_SAFE_UPDATES=1;
DELETE FROm student
LIMIT 2;
INSERT INTO student (rollno, name, marks, grade, city) VALUES
(1, 'Harsha', 95, 'A', 'Hyderabad'),
(2, 'Hari', 78, 'B', 'Chennai');