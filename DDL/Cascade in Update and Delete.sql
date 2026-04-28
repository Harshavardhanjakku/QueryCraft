CREATE TABLE Courses
(
course_id INT PRIMARY KEY,
course_name VARCHAR(100) NOT NULL,
max_marks INT CHECK (max_marks > 0)
);


INSERT INTO Courses VALUES 
(101,"Mathemeatics",75),
(102,"Physics",60),
(103,"Chemistry",60),
(104,"English",100),
(105,"Sanskrit",100),
(106,"Enviromental",30);

SELECT * FROM Courses;
USE sru;
DROP TABLE Teachers;
CREATE TABLE Teachers
(
emp_id INT PRIMARY KEY,
name VARCHAR(100) NOT NULL,
salary DECIMAL(10,2),
dept_id INT,
FOREIGN KEY (dept_id) REFERENCES Courses(course_id)
ON DELETE CASCADE
ON UPDATE CASCADE
);
INSERT INTO Teachers VALUES
(1, 'Gajendra Purohit', 80000.00, 101),
(2, 'Neha Agarwal', 75000.00, 101),
(3, 'Jakku Harshavardhan', 82000.00, 101),
(4, 'Alakh Pandey', 90000.00, 102),
(5, 'Amit Mahajan', 78000.00, 102),
(6, 'Pankaj Sir', 77000.00, 103),
(7, 'Sakshi Vora', 76000.00, 103),
(8, 'Shipra Mishra', 70000.00, 104),
(9, 'Rashmi Sharma', 65000.00, 105),
(10, 'Shubham Pathak', 68000.00, 106);


SELECT * FROM Courses;
SELECT * FROM Teachers;


update Courses
set course_id=983
where course_id =101;

DELETE FROM Courses
WHERE course_id=106;



