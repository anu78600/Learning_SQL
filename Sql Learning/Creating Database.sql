Create table employee (
		employee_id Serial PRIMARY KEY,
		name Varchar(100) NOT NULL,
		postion Varchar(50),
		department Varchar(50),
		hire_date Date,
		salary Numeric(10,2)
);

Select * from employee;