use virtusa;
SELECT * FROM student;

-- Select student who scored above average marks of the class 
SELECT * FROM student
WHERE marks > (SELECT AVG(marks)
FROM student);

-- Select students who are same city as 'Harsha'
SELECT name 
FROM student WHERE city like (
								SELECT city
								FROM student
								WHERE name like "Harsha"
							 );
                             
                             
				
