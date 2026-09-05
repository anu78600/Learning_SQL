-- This is going to be my assignment.

-- Drop the if alredy exit command.
Drop Table If Exists employees;

-- Create the employee table.

Create Table employees(
	employee_id Serial Primary Key,
	first_name Varchar(50) Not Null,
	last_name Varchar(50) Not Null,
	department Varchar(50),
	salary Decimal(10,2) Check(salary>0),
	joining_date Date Not Null,
	age Int Check(age>=18)
);

-- Command to call the table employee.

Select * From employees;

-- Inserting data into employees table.

Insert Into employees(first_name, last_name, department, salary, joining_date,age)
	Values
	('Amit','Sharma','IT',60000.00,'2022-05-01',29),
	('Neha','Patel','HR',55000.00,'2021-08-15',32),
	('Ravi','Kumar','Finance',70000.00,'2020-03-10',35),
	('Anjali','Verma','IT',65000.00,'2019-11-22',28),
	('Suresh','Reddy','Operations',50000.00,'2023-01-10',26);

--Now answering the assessment questions.

-- Q1. Retrive all employees' first_names and their departments.


Select first_name, department From employees;


-- Q2. Update the salary of all employees in the "IT" department by increasing it by 10%.

Update employees
Set Salary= Salary * 1.10
Where department = 'IT';

-- Q3. Delete all employees who are older than 34 year.

Delete From employees

Where age>34;

-- Q4. Add new column 'email' to the 'employees' table.

Alter Table employees
Add column email Varchar(100) Unique;

-- Q5. Rename the 'department' column to 'dept_name'.

Alter Table employees

Rename department To dept_name;


-- Q6. Retrive the name of the employees who joined after january 1, 2021.

Select first_name, last_name, joining_date From employees
Where joining_date > '2021-01-01';


-- Change the data typeoff the "salary" column to 'interger'

Alter Table employees

Alter column salary Type Integer Using salary::Integer;


Select * From employees;

--Q7. List all employees with thier age and salary in descending order of the salary.

Select first_name, last_name, age, salary From employees
Order by salary DESC;

-- Q9. Insert a new employee with the follwing details:

-- ('Raj', 'Singh', 'Marketing', 60000, '2023-09-30', 30)


Insert Into employees (first_name, last_name, dept_name, salary, joining_date, age, email)
	Values('Raj', 'Singh', 'Marketing', 60000, '2023-09-30', 30, 'rajsingh@gmail.com');

-- Q10 Updating the age of the employees +1 to every employee

Update employees
Set age=age+1;





