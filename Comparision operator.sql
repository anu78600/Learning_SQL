-- Learning comparision operator

Select * From employee2 Limit 20;

-- I want only those employee shows in list whose age is above 30.

Select * From employee2
Where age =30;

-- now i want insted of 30 every age show in the list. not equal to - <> or !=

Select * From employee2
Where age<>30 Limit 10;

-- Limit is used to see only that much amount data which you give after using limit like 10 here.


-- Salary greater than 50000

Select * From employee2
Where Salary>50000 Limit 30;

-- Salary less than 30000
Select * From employee2
Where Salary<40000 Limit 10;

