Select * FROM student;

CREATE VIEW myview as 
SELECT name,marks,city FROM student ;
SELECT * FROM myview;


CREATE VIEW hydview as 
SELECT name , city 
FROM student 
where city like "Hyderabad";

SELECT * FROM hydview ;