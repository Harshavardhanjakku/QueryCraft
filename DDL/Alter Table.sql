use sru;
create table temp 
(
id int primary key,
name varchar(20)
);

-- Alter to change the schema ( columns add ,Delete column and rename tablle)


ALTER TABLE temp
ADD COLUMN newcol INT ;

SELECT * FROM temp;

insert into temp values 
(12,"Harsha",24),
(13,"Shashank",26);

ALTER TABLE temp
rename to temperary;

SELECT * FROM temperary;

ALTER TABLE temperary
ADD COLUMN inkocolumn int ;  -- Eda values ki null untay


ALTER TABLE temperary 
DROP column inkocolumn ;

DESC temperary;

alter table temperary
rename column newcol to age ;

ALTER TABLE temperary
modify age smallint ;

alter table temperary 
change name student_name varchar(100);


ALTER TABLE temperary 
ADD (fc Int , sc SMALLINT );