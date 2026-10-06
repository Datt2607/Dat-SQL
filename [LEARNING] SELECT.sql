-- Lấy ra tên của tất cả sản phẩm
SELECT[ProductName]
FROM [dbo].[Products];
-- Lấy ra tên sản phẩm, giá và số lượng trên mỗi đơn vị
SELECT [ProductName],[UnitPrice],[QuantityPerUnit]
FROM [dbo].[Products];

-- Tên công ty của khách hàng, quốc gia của khách hàng đó
SELECT [CompanyName],[Country]
FROM [dbo].[Customers];

-- Gõ tay câu lệnh
SELECT CompanyName, Country
FROM dbo.Customers

-- Tất cả dữ liệu từ bảng Product
SELECT *
FROM dbo.Products;

-- Tất cả dữ liệu từ bảng Customer
SELECT *
FROM dbo.Customers;