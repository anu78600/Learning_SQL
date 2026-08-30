-- Create table employee (
-- 		employee_id Serial PRIMARY KEY,
-- 		name Varchar(100) NOT NULL,
-- 		postion Varchar(50),
-- 		department Varchar(50),
-- 		hire_date Date,
-- 		salary Numeric(10,2)
-- );

-- Select * from employee;

-- I am chaning the value here employee_id int , earlier it was serial

Create table employee2 (
		employee_id INT PRIMARY KEY,
		name Varchar(100) NOT NULL,
		position Varchar(50),
		department Varchar(50),
		hire_date Date,
		salary Numeric(10,2)
);

Select * from employee2;

Alter Tab