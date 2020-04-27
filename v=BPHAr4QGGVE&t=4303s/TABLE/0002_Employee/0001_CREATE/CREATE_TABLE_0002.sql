USE [Test1]

CREATE TABLE [Employee1] 
(
	emp_id INT,
	l_name VARCHAR(50) NOT NULL,
	f_name VARCHAR(50) NOT NULL,
	CONSTRAINT emp_pk PRIMARY KEY (emp_id)
);