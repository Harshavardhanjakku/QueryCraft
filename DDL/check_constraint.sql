CREATE TABLE checktable
(
name VARCHAR(90),
age INT NOT NULL CHECK(age>=18)
);

CREATE TABLE city
(
dcode VARCHAR(10),
city VARCHAR(20),
CONSTRAINT city_check CHECK (dcode="wgl");


INSERT INTO city VALUES ("wgl","Warangal");