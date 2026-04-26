SELECT * FROM student ;
-- Count total students in each city
SELECT city,COUNT(*)
FROM student 
GROUP BY city;

-- Count students in each grade

SELECT grade,COUNT(grade)
FROM student 
GROUP BY grade ;

-- Find number of students in each city with marks > 50
SELECT city,COUNT(*)
FROM student 
WHERE marks >50
GROUP BY city;


-- Find average marks for each city
SELECT city,AVG(marks)
FROm student 
GROUP BY city;

-- Find maximum marks in each grade

SELECT grade , MAX(marks)
FROM student
group by grade;


-- Count how many students got grade 'A' in each city

SELECT city,COUNT(*)
FROM student 
WHERE grade='A'
GROUP by city ;