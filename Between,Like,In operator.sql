Select * From employee2 Limit 30;

-- Learning about Operators (Between, Like and In operator)

-- 1. Retrieve employees whose salary is between 40000 and 60000 - use BETWEEN operators.

Select first_name, last_name, salary From employee2
Where salary Between 40000 And 60000 Limit 30;

-- 2. find employees whose department end with tions _ use LIKE operator

Select first_name, last_name, department From employee2
Where department Like '%tions' Limit 30;

-- 3. Retrieve employees who belong to either the finance or marketing department-- use IN operator

Select first_name, last_name, department From employee2
Where department IN('Finance', 'Marketing');
