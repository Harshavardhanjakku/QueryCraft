SELECT grade,count(rollno) as total
FROM student
GROUP BY grade
HAVING total>1;
