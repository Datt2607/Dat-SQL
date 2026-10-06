-- Số lượng đơn đặt hàng năm 1997 của từng khách hàng
SELECT [CustomerID],
		COUNT([OrderID]) AS [TotalOrders],
		YEAR([OrderDate]) AS [Year_of_order]
FROM dbo.Orders
WHERE YEAR([OrderDate]) = 1997
GROUP BY [CustomerID], YEAR([OrderDate]);

-- Các đơn hàng đặt hàng vào tháng 5 năm 1997
SELECT *
FROM [dbo].[Orders]
WHERE MONTH([OrderDate]) = 5 AND YEAR([OrderDate]) = 1997;

-- Danh sách khách hàng đặt hàng trong năm 1998 và số đơn hàng mỗi tháng, sắp xếp tăng dần theo tháng
SELECT [CustomerID], MONTH([OrderDate]) AS [Month], COUNT(*) AS [Number_of_Order]
FROM [dbo].[Orders]
WHERE YEAR([OrderDate]) = 1998
GROUP BY [CustomerID], MONTH([OrderDate])
ORDER BY MONTH([OrderDate]) ASC;

-- Các đơn đặt hàng đã được giao vào tháng 5, sắp xếp tăng dần theo năm
SELECT [OrderID], YEAR([OrderDate]) AS [Year]
FROM [dbo].[Orders]
WHERE MONTH([OrderDate]) = 5
ORDER BY YEAR([OrderDate]) ASC;
