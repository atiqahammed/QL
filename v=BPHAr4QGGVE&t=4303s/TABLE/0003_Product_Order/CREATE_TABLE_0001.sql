USE [Test1]

CREATE TABLE [Product]
(
	product_id INT PRIMARY KEY,
	product_name VARCHAR(50) NOT NULL,
	product_categoty VARCHAR(50)
);

CREATE TABLE [Order]
(
	order_id INT PRIMARY KEY,
	product_id INT NOT NULL,
	CONSTRAINT product_foreign_key 
		FOREIGN KEY (product_id)
		REFERENCES [Product] (product_id) 
);

ALTER TABLE [dbo].[Order]
	ADD quentity INT;