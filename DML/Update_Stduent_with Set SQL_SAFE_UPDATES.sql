use virtusa;
select * from student;
SET sql_safe_updates=0;
update student 
set age = 20 
where name like "Harsha";