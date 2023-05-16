USE w3schools;
SELECT
	c.CategoryId id,
    c.CategoryName name,
    c.Description,
    p.ProductName,
    p.Price
FROM Categories c JOIN Products p
ON c.CategoryId = p.CategoryId
WHERE c.CategoryId = 1;
DESC Categories;

SELECT * FROM Suppliers s JOIN Products p
			ON s.supplierId = p.supplierId
WHERE s.SupplierID = 1;

USE Board;
SELECT *,
		COUNT(f.id) fileCount
FROM Board b LEFT JOIN FileName f ON b.id = f.boardId
GROUP BY b.id
ORDER BY b.id DESC
LIMIT 0, 20;

SELECT * FROM Member;






