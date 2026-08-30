Select * From employee;

-- Learning about data types and constraints.

CREATE TABLE students(
		student_id SERIAL PRIMARY KEY,
		name VARCHAR(50) NOT NULL,
		email VARCHAR(100) UNIQUE,
		age INTEGER CHECK(age >= 18),
		registration_date TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);


