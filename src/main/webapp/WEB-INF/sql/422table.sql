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

DESC Employees;


CREATE TABLE MyTable34 (
 Col1 INT,
 Col2 VARCHAR(30)
);
INSERT INTO MyTable34 (Col1, Col2)
VALUES (99, 'hello');

CREATE TABLE MyTable35 (
	Col1 DEC(10, 3),
    Col2 VARCHAR(255)
);

CREATE TABLE MyTable36 (
	Col1 INT,
    Col2 VARCHAR(50),
    Col3 DEC(10, 2)
);
INSERT INTO MyTable36 (Col1, Col2, Col3)
VALUES (22, 'hello', 3.14);
SELECT * FROM MyTable36;

CREATE TABLE MyTable37 (
	Age INT,
    Name VARCHAR(20),
    Score INT
);

ALTER TABLE MyTable37
MODIFY Score DEC(10, 2);

SELECT * FROM MyTable37;

CREATE TABLE MyTable38 (
	Col1 INT,
    COl2 INT,
    Col3 VARCHAR(200),
    Col4 VARCHAR(200),
    Col5 DEC(10, 3),
    Col6 DEC(10, 3)
);

CREATE TABLE MyTable39 (
	Col1 INT PRIMARY KEY AUTO_INCREMENT,
    Col2 VARCHAR(300),
    Col3 INT
);
DESC MyTable39;
SELECT * FROM MyTable39;

CREATE TABLE MyTable40 (
	Id INT PRIMARY KEY AUTO_INCREMENT,
    Age INT,
    Name VARCHAR(30),
    Score DEC(10, 3)
);







