SELECT * FROM student ;

SELECT max(marks) 
FROM(
		SELECT marks
		FROM student 
		WHERE city like "Hyderabad"
	) as Hyderbad;
    
    