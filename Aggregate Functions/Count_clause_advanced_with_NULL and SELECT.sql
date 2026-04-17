
DROP TABLE IF EXISTS demo; 
CREATE TABLE demo (
    id INT,
    name VARCHAR(20),
    marks INT
);
 
INSERT INTO demo VALUES (12, 'harsha', 99);
INSERT INTO demo VALUES (17, 'sidhu', 83);
 
INSERT INTO demo VALUES (); -- note null values are sometimes treating as end point for select query and may return wromg count when it counts
 
SELECT * FROM demo;

SELECT COUNT(*) FROM demo;
SELECT COUNT(name) FROM demo;
SELECT * FROM demo WHERE name IS NULL;
