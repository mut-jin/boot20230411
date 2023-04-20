USE w3schools;

DESC MyTable30;
CREATE TABLE MyTable30 (
	Col1 INT,
    Col2 VARCHAR(30)
);

INSERT INTO MyTable30 (Col1, Col2)
VALUES (30, 'java'); -- ok
INSERT INTO MyTable30 (Col1)
VALUES('33'); -- ok
INSERT INTO MyTable30 (Col1)
VALUES ('Three'); -- fail
INSERT INTO MyTable30 (Col2)
VALUES (77); -- ok

SELECT * FROM MyTable30;

--
CREATE TABLE MyTable31 (
	Col1 DATE,
    Col2 DATETIME
);
-- DATE : YYYY-MM-DD
-- DATETIME : YYYY-MM-DD HH:mm:SS
INSERT INTO MyTable31 (Col1, Col2)
VALUES ('2023-04-20', '2023-04-20 09:29:12');

SELECT * FROM MyTable31;

CREATE TABLE MyTable32 (
	Name VARCHAR(30),
    Price DEC(10, 2),
    Birth DATE,
    Inserted DATETIME
);

SELECT * FROM MyTable32;

CREATE TABLE MyTable33 (
	Title VARCHAR(200),
    Published DATE,
    Price INT,
    Updated DATETIME,
    Weight DEC(10, 3)
);

SELECT * FROM MyTable33;
DESC MyTable33;


SELECT * FROM Employees;

DESC Customers;
DESC Suppliers;
DESC Employees;
SELECT * FROM Employees
WHERE EmployeeId = 5;








