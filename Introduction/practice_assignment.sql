CREATE DATABASE IF NOT EXISTS sru ;
USE sru;

show tables;




CREATE TABLE student
(
rollno INT PRIMARY KEY,
name VARCHAR(50) NOT NULL,
marks INT NOT NULL,
grade CHAR(1) ,
city VARCHAR(50)
);



INSERT INTO student VALUES 
(1,"Hari",83,"B","Wgl"),
(2,"Aravind",62,"D","Wgl"),
(3,"Fayaz",89,"B","Kmd"),
(4,"Harsha",98,"O","Wgl"),
(5,"Arun",91,"A","Wgl"),
(6,"Anvith",94,"A","Kmd"),
(7,"Ahmed",75,"C","Kmd"),
(8,"Ajay",21,"F","Kmd"),
(9,"Dinesh",38,"E","Wgl");

SELECT * FROM student ;

