SHOW databases;
CREATE database school;
DROP database school;

CREATE database school;
USE school;
CREATE TABLE student(
	fullname varchar(30),
    nic varchar(15),
    gender varchar(15),
    age int 
    );
SHOW TABLES;
describe tables student;
DESCRIBE student;
DESC student;

ALTER TABLE student ADD COLUMN Z_Score double;
ALTER TABLE student CHANGE fullname full_name varchar(55);
ALTER TABLE student CHANGE age age varchar(100);
ALTER TABLE student CHANGE age age int;
ALTER TABLE student rename to students;
Show tables;
DESC students;

Insert into students(full_name,nic,gender,age,Z_Score)
values('Shanth',1235,'Male',25,2.96);

select * from students;


Insert into students(full_name,nic,gender,age,Z_Score)
values('Shanth',1235,'Male',25,2.960),
('Shanth',1235,'Male',25,2.96),
('Shanth',1235,'Male',25,2.960),
('kokul',1235,'Male',25,2.96);

select * from students;
select full_name,nic from students;
select full_name as name, nic as unique_number from students;
select full_name,nic from students;

select * from students
where age>24;

select * from students
where gender='male';

select * from students
where full_name='shanth';

update students
set age=30
where full_name='shanth';


-- Disable safe update mode
SET SQL_SAFE_UPDATES = 0;
-- Run your update query
UPDATE students
SET age = 30
WHERE full_name = 'shanth';
-- Re-enable safe update mode
SET SQL_SAFE_UPDATES = 1;

select * from students;

SET SQL_SAFE_UPDATES = 0;
UPDATE students
SET age = 30,Z_Score=3.00
WHERE full_name = 'shanth';
SET SQL_SAFE_UPDATES = 1;

select * from students;

SET SQL_SAFE_UPDATES = 0;
Delete from students
where Z_Score=2.96;
SET SQL_SAFE_UPDATES = 1;

select * from students;

truncate table students;
select * from students;