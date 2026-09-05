-- Updating Data in SQL.

INSERT INTO students(name, email, age)
		VALUES('Ram', 'ram@gmail.com', 20),
		('Ramji', 'ra1m@gmail.com', 21),
		('Ram singh', 'ra2m@gmail.com', 18),
		('Ram Tiwari', 'ra3m@gmail.com', 30),
		('Ram Mishra', 'ra4m@gmail.com', 25,);

Select * From students;

UPDATE students 
SET city='Rewa'
WHERE name='Ram';

-- Making the data in the order Ascending

SELECT * FROM students ORDER BY student_id ASC;

UPDATE students
SET age=28, city='America'
WHERE name='Ram Mishra'




-- Adding new colum named city in the students table

ALTER TABLE students
ADD city VARCHAR(50);

-- Inserting data in the new city column.
UPDATE students
SET city = 'Prayagraj'
WHERE name = 'Ramji';

UPDATE students
SET city = 'Satna'
WHERE name = 'Ram singh';

UPDATE students
SET city = 'Delhi'
WHERE name = 'Ram Tiwari';

UPDATE students
SET city = 'Gujrat'
WHERE name = 'Ram Mishra';
