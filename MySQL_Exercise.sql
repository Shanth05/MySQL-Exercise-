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
describe table student;
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
describe table students;
DESCRIBE students;
DESC students;

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

CREATE TABLE Department(
	Department_ID int primary key,
    Department_Name VARCHAR(50) NOT NULL
    );
    
INSERT INTO Department(Department_ID,Department_Name)
VALUES (1,'E-Tech'),(2,'B-Tech'),(3,'ICT');
    
SHOW TABLES;
DESC DEPARTMENT;
SELECT * FROM Department;
    
CREATE TABLE Employee(
	Employee_ID int primary key,
    First_Name VARCHAR(50) NOT NULL,
    Last_Name VARCHAR(50) NOT NULL,
    Department_ID INT,
    FOREIGN KEY (Department_ID) REFERENCES Department (Department_ID) 
    );
    
INSERT INTO Employee(Employee_ID,First_Name,Last_Name, Department_ID)
VALUES 
(1,'Kokul','Selvarasa',1),
(2,'Niro','Siva',2),
(3,'Lavan','Sivan',2),
(4,'karish','sana',2);

SHOW TABLES;
DESC Employee;
SELECT * FROM Employee;

CREATE TABLE Sales(
	Select_ID INT AUTO_INCREMENT primary key,
    Product VARCHAR(50),
    Quality INT,
    SalesAmount DECIMAL(10,2)
    );
    
INSERT INTO Sales(Product,Quality,SalesAmount)
VALUES
('Product A',7,100),
('Product B',6,120),
('Product C',5,150),
('Product D',8,140);

SHOW TABLES;
DESC Employee;
SELECT * FROM Sales;

SELECT MIN(SalesAmount) As MinSalesAmount FROM Sales;
SELECT MAX(SalesAmount) As MAXSalesAmount FROM Sales;
SELECT AVG(SalesAmount) As AVGSalesAmount FROM Sales;
SELECT SUM(SalesAmount) As SUMSalesAmount FROM Sales;
SELECT COUNT(*) AS TotalRecords FROM Sales;


SELECT * FROM Sales ORDER BY SalesAmount DESC;
SELECT * FROM Sales ORDER BY SalesAmount ASC;

SELECT 
MIN(SalesAmount) AS MinSalesAmount, 
MAX(SalesAmount) AS MaxSalesAmount, 
AVG(SalesAmount) AS AvgSalesAmount, 
SUM(SalesAmount) AS SumSalesAmount, 
COUNT(*) AS TotalRecords 
FROM Sales;

SELECT Product,SUM(SalesAmount) AS SumSalesAmount 
FROM Sales
GROUP BY Product;

SELECT Product,Count(*) AS SumSalesAmount 
FROM Sales
GROUP BY Product;


SELECT Product,
MIN(SalesAmount) AS MinSalesAmount, 
MAX(SalesAmount) AS MaxSalesAmount, 
AVG(SalesAmount) AS AvgSalesAmount, 
SUM(SalesAmount) AS SumSalesAmount, 
COUNT(*) AS TotalRecords 
FROM Sales GROUP BY Product;

SELECT 
	Product,SUM(SalesAmount) As TotalAmounts
FROM Sales 
GROUP BY Product 
Having TotalAmounts < 200
ORDER BY TotalAmountS ASC;

SHOW TABLES;
SELECT * FROM department;
DESC department;

ALTER TABLE department
ADD Age INT,
ADD Salary DECIMAL(10,2),
ADD Department VARCHAR(50);
	
    
    
DESC department;

INSERT INTO department(Department_ID, Department_Name,Age,Salary,Department)
VALUES
(001,ICT,25,120000,ICT),
(001,ICT,25,120000,ICT),
(001,ICT,25,120000,ICT),
(001,ICT,25,120000,ICT);


CREATE TABLE Workers(
EmployeeID INT PRIMARY KEY,
FirstName VARCHAR(50),
LastName VARCHAR(50),
Age INT,
Salary DECIMAL(10,2),
Department VARCHAR(50))


INSERT INTO Workers (EmployeeID,FirstName,LastName,Age,Salary,Department)
VALUES
(1,'Shanth','Pirashanth',25,100000,'ICT'),
(2,'Selvarasa','Kokulan',25,150000,'ENT'),
(3,'Sivanantharasa','Nirojan',25,130000,'ICT'),
(4,'Vinothalingam','Vipoosanan',25,160000,'ICT'),
(5,'Sivalingam','Lavan',25,150000,'ICT');

DESC Workers;
SELECT * FROM Workers;

SELECT * FROM Workers
WHERE Department ='ICT' AND Salary>100000;

SELECT * FROM Workers
WHERE Department ='BST' OR Salary>100000;

SELECT * FROM Workers
WHERE NOT Department ='ICT';

SELECT * FROM Workers
WHERE Age BETWEEN 25 AND 26;




	




select * from students;