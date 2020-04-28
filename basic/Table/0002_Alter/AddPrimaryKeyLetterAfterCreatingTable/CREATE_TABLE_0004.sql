USE [Test1]

CREATE TABLE [Employee4] 
(
	emp_id INT NOT NULL,
	l_name VARCHAR(50) NOT NULL,
	f_name VARCHAR(50) NOT NULL
);

ALTER TABLE [Employee4]
ADD CONSTRAINT emp_pk_table4 PRIMARY KEY (emp_id);