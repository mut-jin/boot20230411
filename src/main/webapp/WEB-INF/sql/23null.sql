SELECT * FROM Products ORDER BY 1 DESC;
-- IFNULL : null이면 다른 값으로 변경
SELECT IFNULL(0, 100); -- 0
SELECT IFNULL('kim', 'lee'); -- kim
SELECT IFNULL(NULL, 100); -- 100
SELECT IFNULL(NULL, 'park'); -- park

SELECT ProductID, 
		ProductName,
        SupplierID,
        CategoryID,
        Unit,
        IFNULL(Price, 0) AS Price
FROM Products ORDER BY 1 DESC;

SELECT AVG(IFNULL(Price, 0)) AS Average FROM Products
WHERE CategoryID = 2; -- 19.7676
SELECT AVG(Price) AS Average FROM Products
WHERE CategoryID = 2; -- 23.0625

-- 문제1) 고객테이블에서 CustomerId, CustomerName, ContactName, Address 조회
-- ContactName이 NULL이면 'Anonymous'로
-- Address 가 NULL 이면 'Homeless'로 조회
SELECT * FROM Customers Order BY 1 DESC;

SELECT CustomerId,
		CustomerName,
        IFNULL(ContactName, 'Anonymous') AS ContactName,
        IFNULL(Address, 'Homeless') AS Address
FROM Customers ORDER BY 1 DESC;