-- null과의 연산은 모두 false
SELECT * FROM Products WHERE CategoryID = 2;
SELECT * FROM Products
WHERE CategoryID = 2
	AND Price >= 25.00; -- 전체 14개 중 4
SELECT * FROM Products
WHERE CategoryID = 2
	AND Price < 25.00; -- 전체 14개 중 8 null인것 연산된 것 두 레코드 false
SELECT * FROM Products
WHERE CategoryID = 2
	AND IFNULL(Price, 0) < 25.00; -- 10
    
SELECT * FROM Products
WHERE CategoryID = 2
	AND Price IS NULL;
SELECT ProductName, Price * 1300 FROM Products
WHERE CategoryID = 2; -- 산술연산 결과도 NULL
SELECT ProductName, IFNULL(Price, 0) * 1300 FROM Products
WHERE CategoryID = 2;
