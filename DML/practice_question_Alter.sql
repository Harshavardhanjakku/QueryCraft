USE sru;
Select * from demo;

ALTER TABLE demo
RENAME COLUMN  name TO stuname ;
desc demo;
SET SQL_SAFE_UPDATES=0;
DELETE FROM demo
WHERE marks <85  ;


ALTER TABLE demo
DROP COLUMN stuname;
TRUNCATE TABLE demo;

DROP table demo;