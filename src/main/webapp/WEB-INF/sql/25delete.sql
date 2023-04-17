-- DELETE : 테이블의 record 지우기

-- 매우 주의!!!!

DELETE
FROM Customers -- 지울 테이블 명 
WHERE CustomerID = 94; -- 지울 레코드의 조건

-- 지우기전 같은 테이블 같은 조건으로 SELECT 하기!!!
SELECT * -- select 먼저 해보고 delete 실행
FROM Customers
WHERE CustomerID = 94; -- 지울 레코드의 조건

-- 93번 고객 지우기
-- 78번 상품 지우기
-- 79번 상품 지우기
SELECT *
FROM Customers
WHERE CustomerID = 93;

DELETE
FROM Customers
WHERE CustomerID = 93;

SELECT *
FROM Products
WHERE ProductID = 78;

DELETE
FROM Products
WHERE ProductID = 78;

SELECT *
FROM Products
WHERE ProductID = 79;

DELETE
FROM Products
WHERE ProductID = 79;

--
DELETE
FROM Products
WHERE CategoryID = 1;
--
SELECT COUNT(*) FROM Products;

SELECT *
FROM Products;

DELETE
FROM Products;

SELECT *
FROM Products;

-- 문제1) 고객테이블에서 USA에 사는 고객들 지우기
SELECT *
FROM Customers
WHERE Country = 'USA';

DELETE
FROM Customers
WHERE Country = 'USA';
-- 문제2) 모든 직원 지우기
SELECT *
FROM Employees;

DELETE
FROM Employees;