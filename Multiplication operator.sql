Select * From employee2 Limit 20;

-- Learning about the operators in Sql

-- Arethmetic Multiplication operator

Select first_name, salary, (salary*0.10) As Bonus
From employee2;

-- Calculating new salary
Select first_name, last_name, salary, (salary*12) As annual_salary,
(salary*0.05) As increment_amount,
(salary+salary*0.05) As new_salary
From employee2;