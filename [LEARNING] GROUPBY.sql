-- Mỗi khách hàng đã đặt bao nhiêu đơn hàng
SELECT [CustomerID], COUNT ([OrderID]) AS [TotalOrders]
FROM dbo.Orders
GROUP BY [CustomerID];

-- Giá trị đơn giá trung bình theo mỗi nhà cung cấp sản phẩm
SELECT [SupplierID], AVG([UnitPrice]) AS [AveragePrice]
FROM dbo.Products
GROUP BY [SupplierID];

-- Mỗi thể loại có tổng số bao nhiêu sản phẩm trong kho?
SELECT [CategoryID], SUM([UnitsInStock]) AS 'NUMBER_OF_UNIT_IN_STOCK'
FROM [dbo].[Products]
GROUP BY [CategoryID];

-- Giá vận chuyển thấp nhất và cao nhất của các đơn hàng theo từng thành phố và quốc gia khác nhau
SELECT [ShipCountry], [ShipCity],
		MIN([Freight]) AS 'Min_Freight',
		MAX([Freight]) AS 'Max_Freight'
FROM [dbo].[Orders]
GROUP BY [ShipCity],[ShipCountry]
ORDER BY [ShipCountry] ASC, [ShipCity] ASC;


