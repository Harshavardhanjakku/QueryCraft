use sru;
SELECT * FROM student;
DELETE FROM student 
WHERE grade IS NULL 
LIMIT 100;
SELECT grade , COUNT(*)
FROM student
GROUP BY grade;