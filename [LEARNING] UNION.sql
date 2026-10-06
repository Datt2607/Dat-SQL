SELECT od.OrderID
FROM dbo.[Order Details] AS od
WHERE od.UnitPrice BETWEEN 100 AND 200;
-- 22 rows

SELECT od.OrderID
FROM dbo.[Order Details] AS od
WHERE od.Quantity IN(20,10);
-- 433 rows

SELECT od.OrderID
FROM dbo.[Order Details] AS od
WHERE od.UnitPrice BETWEEN 100 AND 200
UNION
SELECT od.OrderID
FROM dbo.[Order Details] AS od
WHERE od.Quantity IN(20,10);
-- 360 rows

SELECT od.OrderID
FROM dbo.[Order Details] AS od
WHERE od.UnitPrice BETWEEN 100 AND 200
UNION ALL 
SELECT od.OrderID
FROM dbo.[Order Details] AS od
WHERE od.Quantity IN(20,10);
-- 455 rows


-- Lấy tất cả quốc gia (không lặp) từ 2 table Suppliers và Customers
SELECT s.Country
FROM dbo.Suppliers AS s
UNION
SELECT c.Country
FROM dbo.Customers AS c;