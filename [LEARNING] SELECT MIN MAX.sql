-- Tìm giá thấp nhất của các sản phẩm trong bảng Product
SELECT MIN([UnitPrice]) AS [MinPrice]
FROM dbo.Products;

-- Lấy ra ngày đặt hàng gần đây nhất trong bảng Order
SELECT MAX([OrderDate]) AS [LatestOrderDate]
FROM dbo.Orders;

-- Tìm số lượng hàng trong kho (UnitInStock) lớn nhất
SELECT MAX([UnitsInStock]) AS [MaxUnitsInStock]
FROM dbo.Products;