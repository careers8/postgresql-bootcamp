/*
ASSESSMENT #3: Create two tables, and insert values into each.
Database: Created using pgAdmin.
*/

CREATE TABLE 
students
(
	student_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(50) NOT NULL,
	last_name VARCHAR(50) NOT NULL, 
	homeroom_number VARCHAR(50), 
	phone VARCHAR(50) UNIQUE NOT NULL,
	email VARCHAR(50) UNIQUE, 
	graduation_year VARCHAR(50) 
);

CREATE TABLE 
teachers
(
	teacher_id SERIAL PRIMARY KEY, 
	first_name VARCHAR(50) NOT NULL, 
	last_name VARCHAR(50) NOT NULL,
	homeroom_number VARCHAR(50), 
	department VARCHAR(50), 
	email VARCHAR(50) UNIQUE,
	phone VARCHAR(50) UNIQUE
);

INSERT
INTO students
(
	first_name,
	last_name,
	phone,
	graduation_year,
	homeroom_number
)
VALUES
(
	'Mark',
	'Whatney',
	'777-555-1234',
	‘2035’,
	'5'
);

INSERT
INTO teachers
(
	first_name,
	last_name,
	homeroom_number,
	department,
	email,
	phone
)
VALUES
(
	'Jonas',
	'Salk',
	'5',
	'Biology',
	'jsalk@school.org',
	'777-555-4321'
);