select * from student ;

-- and 
SELECT * from student 
where branch like "CSE" and age >=20;

-- or 
SELECT * from student
WHERE age >19 or branch like "CSE";

-- arithmetic 
select * from student
where age+age<40;
SELECT * FROM student 
where age*5!=100;
SELECT * from student 
WHERE id%2;

-- not equal
SELECT * FROM student
WHERE id<>17;
SELECT * FROM student
WHERE id!=17;

SELECT * FROM student 
where branch not in ("BSC","EEE");

SELECT * FROM student 
where branch in ("BSC","EEE");

-- between inclusive
SELECT * FROM student 
where age between 19 and 22;





