Select * From employee2;

-- Operators -- NUll, LIMIT, ORDER BY, DISTINCT 

-- 1.Find employee where department IS NULL (if applicable)

Select first_name, department From employee2
Where department IS NULL;

-- List employees sorted by salary in descending order -- using ORDER BY

Select first_name, last_name, salary From employee2
Order by salary DESC;

-- Retrieve the top 5 highest-paid employees. -- using LIMIT operator

Select first_name, last_name, salary From employee2

Order by salary DESC Limit 5;

--- Retrieve a list of unique departments

Select Distinct department From employee2;
Select Count (Distinct department) From employee2;
