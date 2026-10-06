-- Đơn hàng giao đến Germany, UK, Brazil
SELECT *
FROM dbo.Orders
WHERE ShipCountry IN ('Germany', 'UK', 'Brazil')
-- Đơn hàng không giao đến Germany, UK, Brazil
SELECT OrderID, ShipCountry
FROM dbo.Orders
WHERE ShipCountry NOT IN ('Germany', 'UK', 'Brazil');

-- Liệt kê các nhân viên không phải là nữ
SELECT *
FROM dbo.Employees
WHERE TitleOfCourtesy NOT IN ('Ms.','Mrs.');

