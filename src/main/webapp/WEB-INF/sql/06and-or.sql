USE w3schools;

-- AND
SELECT * 
FROM Customers
WHERE CustomerId > 4 AND Country = 'Germany';

SELECT *
FROM Employees
WHERE LastName >= 'M' AND BirthDate > '1960-01-01';

-- 카테고리 id가 2이고 가격이 20.00 이상인 상품들을 조회
SELECT * 
FROM Products
WHERE CategoryID = '2' AND Price >= 20.00;

-- 1950-01-01 ~ 1959-12-31 사이에 태어난 직원들 조회
SELECT *
FROM Employees
WHERE BirthDate >= '1950-01-01' AND BirthDate <= '1959-12-31';