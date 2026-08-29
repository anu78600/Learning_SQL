Select * From employee2;

Insert Into employee2 (employee_id, name, position, department, hire_date, salary)
		   Values(101, 'Amit Singh', 'Data Analyst', 'Data Science', '2026-08-30', 80000.00),
		   (102, 'Shonal Singh', 'Lead Analyst', 'Data Science', '2026-08-30', 150000.00),
		   (103, 'Ram Singh', 'IT Manager', 'Data IT', '2026-08-30', 90000.00),
		   (104, 'Mohan Singh', 'Sales Manager', 'Finance', '2026-08-30', 100000.00);

-- This is for deleting the row from the table
Delete From employee2
Where department= 'Finance';

-- This is for deleting the column
Alter Table employee2
Drop Column salary;

-- This is for deleting the whole table

Drop Table If Exists employee2;