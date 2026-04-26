SELECT * FROM student ;
SELECT city, count(city) -- return null as 0
FROM student
GROUP BY city;

SELECT city, count(*) -- return null as 1 as it treates null as grp
FROM student
GROUP BY city;

SELECT * FROM student ;