USE [Test1]

CREATE TABLE [Product1]
(
	product_id INT PRIMARY KEY,
	product_name VARCHAR(50) NOT NULL,
	product_categoty VARCHAR(50)
);

CREATE TABLE [Order1]
(
	order_id INT PRIMARY KEY,
	product_id INT NOT NULL,
	quentity INT 
);

ALTER TABLE [Order1]
	ADD CONSTRAINT FK_Product_id1 
		FOREIGN KEY (product_id)
		REFERENCES [Product1] (product_id);