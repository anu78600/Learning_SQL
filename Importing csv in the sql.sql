Drop Table If exists employee2
Drop Table If exists employee
Drop Table If exists employ

Create Table employee2(

	employee_id Int Primary Key,
	first_name Varchar(20) Not Null,
	last_name Varchar(20) Not Null,
	department Varchar(20),
	salary Numeric(10,2),
	joining_date Date,
	age Int

);

Select * From employee2;

-- Importing the csv files in the sql....

Copy
employee2(employee_id, first_name, last_name, department, salary, joining_date, age)
From 'C:/Practise/employee_data.csv'
Delimiter','
CSV Header;

SELECT * FROM employee2 Limit 5;
--
Drop Table If exists employee3;

Create Table employee3(

	customer_ID Int Primary Key,
	Name Varchar(50) Not Null,
	Email Varchar(80) Not Null,
	Phone Numeric(10) Not Null Unique,
	City Varchar(100) Not Null,
	Country Varchar(100) Not Null
	

);

Select * From employee3;

Copy
employee3(customer_ID, Name, Email, Phone, City, Country)
From 'C:/Practise/Customers.csv'
Delimiter','
CSV Header;


Select * From employee3 Limit 20;