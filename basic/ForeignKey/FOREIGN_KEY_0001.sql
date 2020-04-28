USE [Test1]

CREATE TABLE vendor_groups (
    group_id INT IDENTITY PRIMARY KEY,
    group_name VARCHAR (100) NOT NULL
);

CREATE TABLE vendors (
	vendor_id INT IDENTITY PRIMARY KEY,
	vendor_name VARCHAR(100) NOT NULL,
	group_id INT NOT NULL,
);


DROP TABLE vendors;

CREATE TABLE vendors (
        vendor_id INT IDENTITY PRIMARY KEY,
        vendor_name VARCHAR(100) NOT NULL,
        group_id INT NOT NULL,
        CONSTRAINT fk_group FOREIGN KEY (group_id) 
        REFERENCES vendor_groups(group_id)
);


INSERT INTO vendor_groups(group_name)
VALUES('Third-Party Vendors'),
      ('Interco Vendors'),
      ('One-time Vendors');

/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) 
	[group_id],
	[group_name]
FROM [Test1].[dbo].[vendor_groups]



INSERT INTO vendors(vendor_name, group_id)
	VALUES('ABC Corp',1);


/****** Script for SelectTopNRows command from SSMS  ******/
SELECT TOP (1000) 
	[vendor_id],
	[vendor_name],
	[group_id]
FROM [Test1].[dbo].[vendors]


INSERT INTO vendors(vendor_name, group_id)
	VALUES('XYZ Corp',4);

/* help full link https://www.sqlservertutorial.net/sql-server-basics/sql-server-foreign-key/ */