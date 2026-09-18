-- Learning about the join function.

Create Table employee4(
		employee_id Int Not Null,
		first_name Varchar(50),
		last_name Varchar(50),
		department_id Int

);

Select * From employee4;



Insert Into employee4(employee_id,first_name,last_name,department_id)
	Values(1,'Rahul','Sharma',101),
			(2,'Priya','Mehta',102),
			(3,'Ankit','Verma',103),
			(4,'Simran','Kaur',NULL),
			(5,'Aman','Singh',101);


Create Table department(
		department_id Int,
		department_name Varchar(100)
);

Insert Into department(department_id,department_name)
	Values(101,'Sales'),
	(102,'Marketing'),
	(103,'IT'),
	(104,'HR');

Select * From department;


-- Inner Join function.... Getting output of that data which are available in both tables.

Select e.employee_id, e.first_name, e.last_name, 
		d.department_name, d.department_id
From employee4 e
Inner Join department d
ON e.department_id = d.department_id;


-- Left Join......

Select e.employee_id, e.first_name, e.last_name,
		d.department_name, d.department_id
From employee4 e
Left Join department d
ON e.department_id = d.department_id;

--Right Join.....
Select e.employee_id, e.first_name, e.last_name,
		d.department_name, d.department_id
From employee4 e
Right Join department d
ON e.department_id = d.department_id;

-- Full outer Join
Select e.employee_id, e.first_name, e.last_name,
		d.department_name, d.department_id
From employee4 e
Full Outer Join department d
ON e.department_id = d.department_id;

-- Cross Join....

Select e.first_name, e.last_name, d.department_name
From employee4 e 
Cross Join
	department d;


-- Self Join....

Select e1.first_name AS employee_name1,
		e2.first_name AS employee_name2,
		d.department_name
From employee4 e1
Join employee4 e2
ON e1.department_id = e2.department_id And e1.employee_id != e2.employee_id
Join department d
ON e1.department_id = d.department_id;


