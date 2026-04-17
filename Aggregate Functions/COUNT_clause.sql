show databases;
use sru;
show tables;
select * from student;
INSERT INTO student (rollno,name,marks) VALUES (12,"Random person",92);


-- count
SELECT COUNT(city) FROM student ; -- as city contains null value it will return 9 
SELECT COUNT(marks) FROM student; -- as marks contains not null values it will be 10 
SELECT COUNT(*) FROM student ; -- better use * Asterisk
