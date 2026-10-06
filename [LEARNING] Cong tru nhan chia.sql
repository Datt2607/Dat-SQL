-- Tính số lượng sản phẩm còn lại trong kho sau khi bán hết sản phẩm đã được đặt hàng
SELECT [ProductID],[ProductName],[UnitsInStock],[UnitsOnOrder],
		([UnitsInStock]-[UnitsOnOrder]) AS [StockRemaining]
FROM dbo.Products;

-- Tính giá trị đơn hàng chi tiết cho tất cả sản phẩm trong bảng OrderDetail
SELECT *,
		([UnitPrice]*[Quantity]) AS [OrderDetailValue]
FROM dbo.[Order Details];

-- Tính tỷ lệ giá vận chuyển đơn đặt hàng trung bình của các đơn hàng trong bảng Orders so với giá trị vận chuyển của đơn hàng lớn nhất
SELECT AVG([Freight])/MAX([Freight]) AS [FreightRatio]
FROM dbo.Orders;

-- Liệt kê danh sách các sản phẩm và giá (UnitPrice) của từng sản phẩm sẽ được giảm đi 10%
SELECT [ProductID],
		[UnitPrice]*0.9 AS [Sale10%]
FROM dbo.Products;