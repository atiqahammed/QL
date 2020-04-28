CREATE SCHEMA hr;
GO

CREATE TABLE hr.persons(
    person_id INT IDENTITY PRIMARY KEY,
    first_name VARCHAR(255) NOT NULL,
    last_name VARCHAR(255) NOT NULL,
    email VARCHAR(255) UNIQUE
);

INSERT INTO hr.persons(first_name, last_name, email)
VALUES('John','Doe','j.doe@bike.stores');

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) [person_id]
      ,[first_name]
      ,[last_name]
      ,[email]
  FROM [Test1].[hr].[persons]

INSERT INTO hr.persons(first_name, last_name)
VALUES('John','Smith');

INSERT INTO hr.persons(first_name, last_name)
VALUES('Lily','Bush');

/* https://www.sqlservertutorial.net/sql-server-basics/sql-server-unique-constraint/ */