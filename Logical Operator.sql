-- Logical Operator in Sql.

Select * From employee2 Limit 30;

-- Using And operator

Select * From employee2
Where age>=40 And salary>=50000 Limit 10;

-- Using OR operator

Select * From employee2
Where age<=30 OR salary<=30000 Limit 20;

-- Using NOT operatore

Select * From employee2
Where Not(department)='IT' Limit 20;