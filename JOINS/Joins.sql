USE virtusa;
SHOW tables; 
drop table if exists  enrollment;
SELECT * FROM student;
SELECT * FROM course;

-- Students who are registred the Course 
SELECT * FROM student as S 
JOIN course as C 
ON C.rollno=S.rollno;

-- All the student list no matter whether they are registered or not 
SELECT * FROM student S 
LEFT JOIN course C 
on S.rollno=C.rollno;
 
 
INSERT INTO course VALUES (107, 'Cloud', NULL);
-- Show all courses and the students who registered for them (even if some courses have no students)
SELECT * 
FROM student S
RIGHT JOIN course C 
ON S.rollno = C.rollno
WHERE S.rollno IS NULL;