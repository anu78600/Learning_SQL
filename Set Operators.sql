-- Learning set operators in SQL

Drop Table If Exists students_2023;
Create Table students_2023 (
	students_id INT Primary Key,
	students_name Varchar(100),
	course Varchar(50)
);

Insert Into students_2023 (students_id, students_name, course) 
Values
(1, 'Ram', 'Computer Science'),
(2, 'Anupam Mishra', 'BCA'),
(3, 'Anupam', 'MBA'),
(4, 'Annu', 'Data Anlaytic');

Select * From students_2023;

Drop Table If Exists students_2024;

Create Table students_2024 (
	students_id INT Primary Key,
	students_name Varchar(100),
	course Varchar(50)
);

Insert Into students_2024 (students_id, students_name, course) 
Values
(1, 'Ram', 'MS Excel'),
(2, 'Anupam Mishra', 'Power Bi'),
(3, 'Anupam', 'SQL'),
(4, 'Annu', 'Data Anlaytic');

Select * From students_2024;

-- Union -- Combines results, removes duplicates

Select students_name, course From students_2023
Union
Select students_name, course From students_2024;



--Union ALL - Combines results, keeps duplicates


Select students_name, course From students_2023
Union ALL
Select students_name, course From students_2024;



-- Intersect- Returns common result in both tables.

Select students_name, course From students_2023
Intersect
Select students_name, course From students_2024;


-- Except - Resturn results in the first table but not in the second.

Select students_name, course From students_2023
Except
Select students_name, course From students_2024;

