-- INSERT : 테이블에 새 레코드 입력
SELECT * FROM Customers;
INSERT INTO Customers
(CustomerID, CustomerName, ContactName, Address, City, PostalCode, Country)
VALUES
(92, '박지성', '두개의심장', 'London', 'Seoul', '1234567', 'Korea');
SELECT * FROM Customers ORDER BY CustomerID DESC;

-- 모든 컬럼에 값을 넣을 떄 컬럼명 생략 가능
INSERT INTO Customers
VALUES (93, '차범근', '차붐', '프랑크푸르트', 'Seoul', '123456', 'Korea');

-- 특정 컬럼에만 값을 넣을 때 컬럼명 작성해야함
INSERT INTO Customers
(CustomerID, CustomerName, City, Country)
VALUES
(94, '송태섭', 'Tokyo', 'Japan');

-- Suppliers 테이블에 30번째 공급자 추가(모든 열)
-- Suppliers 테이블에 31번째 공급자 추가
-- SupplierID, SupplierName, City, Country
SELECT * FROM Suppliers ORDER BY 1 DESC;
INSERT INTO Suppliers
VALUES (30, '태섭', '송', '태섭집', 'Seoul', '1234', 'Korea', '12341234');
INSERT INTO Suppliers
(SupplierID, SupplierName, City, Country)
VALUES
(31, '호섭', 'Tokyo', 'Japan');