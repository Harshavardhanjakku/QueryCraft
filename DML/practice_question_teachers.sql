drop table if exists teachers ;
CREATE TABLE teachers 
( id INT PRIMARY KEY,
name VARCHAR(20),
branch VARCHAR(5),
salary DOUBLE 
);
INSERT INTO teachers VALUES 
(1012,"Venkatesh","CSE",99999),
(1017,"Shradha","EEE",10000.00),
(1015,"Praveen","AIMl",892.833),
(1013,"Ranjith","CSE",9191.999);

SELECT * from teachers ;