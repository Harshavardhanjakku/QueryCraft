SELECT * FROM student ;
INSERT INTO student values (101,"ZEBRA",9,'F',"WGl");
-- Maximum clause
SELECT MAX(marks) FROM student ;
SELECT MAX(name) from student ; -- note max of string will return the lexicographically (dictionary order) largest value

