USE [Test1]

CREATE TABLE [Employee3] 
(
	l_name VARCHAR(50) NOT NULL,
	f_name VARCHAR(50) NOT NULL,
	salary MONEY,
	CONSTRAINT emp_pk_multiple PRIMARY KEY (f_name, l_name)
);