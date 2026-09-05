-- Updating data using toolbar of the sql.


SELECT * FROM students ORDER BY student_id ASC;

-- Updating the column in Sql.

ALTER Table students
Rename column name To students_name;

-- To change the age column data type from int to smallint.

Alter Table students
Alter column age Type smallint;

-- To add constraint not null to city column

Alter Table students
Alter column city Set Not Null;

-- Adding check constraint for the age

Alter Table students
Add Constraint age Check(age>=18);

-- Altering table name.

Alter Table students
Rename To customers;