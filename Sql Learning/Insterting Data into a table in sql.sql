Select * from employee;


Insert Into employee(name, postion, department, hire_date, salary)
	Values('Ajit Sharma', 'Data Analyst', 'Data Science', '2022-05-15', 65000.00),
	    ('Roshan Sharma', 'Data Analyst', 'Data Science', '2022-05-15', 65000.00),
	    ('Loshan Sharma', 'Lead Analyst', 'Data Science', '2023-05-15', 100000.00),
	    ('Jonshan Sharma', 'Human Resource', 'Data Science', '2022-05-20', 75000.00);


-- 		DELETE FROM employee e
-- USING (
--   SELECT MIN(employee_id) AS keep_id, name
--   FROM employee
--   GROUP BY name
-- ) t
-- WHERE e.name = t.name
-- AND e.employee_id <> t.keep_id;
