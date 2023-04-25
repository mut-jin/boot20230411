CREATE DATABASE leetcode183;
USE leetcode183;

CREATE TABLE Customers(
	id INT PRIMARY KEY,
    name VARCHAR(100)
);
INSERT INTO Customers VALUES(1, 'Joe');
INSERT INTO Customers VALUES(2, 'Henry');
INSERT INTO Customers VALUES(3, 'Sam');
INSERT INTO Customers VALUES(4, 'Max');

CREATE TABLE Orders (
	id INT PRIMARY KEY,
    customerId INT,
    FOREIGN KEY (customerId) REFERENCES Customers(id)
);
INSERT INTO Orders VALUES (1, 3);
INSERT INTO Orders VALUES (2, 1);

-- 문제 ) 한번도 주문하지 않은 고객 조회
SELECT c.name Customers FROM
Customers c LEFT JOIN Orders o ON c.id = o.customerId
WHERE o.id IS NULL; 

SELECT name FROM Customers
WHERE Customers.id NOT IN (SELECT customerId FROM Orders);

SELECT * FROM Orders;
SELECT * FROM Customers;
USE w3schools;
SELECT * FROM Customers
WHERE CustomerId NOT IN (SELECT CustomerID FROM Orders);
















