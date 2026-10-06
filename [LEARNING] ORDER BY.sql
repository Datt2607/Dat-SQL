-- Liệt kê tất cả nhà cung cấp dịch vụ theo thứ tự tên đơn vị CompanyName, từ A-Z
SELECT *
FROM dbo.Suppliers
ORDER BY [CompanyName] ASC;

-- Liệt kê tất cả sản phẩm theo thứ tự giá giảm dần
SELECT *
FROM dbo.Products
ORDER BY [UnitPrice] DESC;

-- Liệt kê tất cả nhân viên theo thứ tự họ từ A-Z
SELECT *
FROM dbo.Employees
ORDER BY [LastName];

-- Lấy ra 1 sản phẩm có số lượng bán cao nhất từ bảng [Order Detail],không dùng max
SELECT TOP 1 *
FROM dbo.[Order Details]
ORDER BY [Quantity] DESC;
