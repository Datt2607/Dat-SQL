-- Liệt kê tất cả nhân viên đến từ thành phố London, sắp xếp theo LastName
SELECT *
FROM dbo.Employees
WHERE [City] = 'London'
ORDER BY [LastName] ASC;

-- Liệt kê tất cả đơn hàng bị giao muộn. Ngày giao hàng là RequiredDate, ngày giao hàng thực tế là ShippedDate
SELECT [OrderID],[RequiredDate],[ShippedDate]
FROM dbo.[Orders]
WHERE [RequiredDate] < [ShippedDate];

SELECT COUNT(*) AS [NumberofLateOrder]
FROM dbo.[Orders]
WHERE [RequiredDate] < [ShippedDate];

-- Lấy ra tất cả đơn hàng được giảm giá hơn 10%
SELECT *
FROM dbo.[Order Details]
WHERE [Discount] > 0.1;