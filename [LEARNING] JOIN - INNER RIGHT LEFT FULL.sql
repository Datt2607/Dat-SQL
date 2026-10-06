-- Từ bảng Products và Categories, hãy in ra:
-- Mã thể loại
-- Tên thể loại
-- Mã sản phẩm 
-- Tên sản phẩm
SELECT c.CategoryID, c.CategoryName, p.ProductID,p.ProductName
FROM dbo.Categories c
INNER JOIN dbo.Products p
ON c.CategoryID = p.CategoryID;

-- Từ bảng Products và Categories, hãy in ra:
-- Mã thể loại
-- Tên thể loại
-- Số lượng sản phẩm
SELECT c.CategoryID, c.CategoryName, COUNT(p.ProductID) AS [Number_of_Product]
FROM dbo.Categories c
INNER JOIN dbo.Products p
ON c.CategoryID = p.CategoryID
GROUP BY c.CategoryID, c.CategoryName;

-- Sử dụng INNER JOIN, hãy in ra:
-- Mã đơn hàng
-- Tên công ty khách hàng
SELECT o.OrderID, c.CompanyName
FROM dbo.Orders o
INNER JOIN dbo.Customers c
ON o.CustomerID = c.CustomerID;

-- Edit data Catogories, hãy in ra đầy đủ thông tin (cả dữ liệu mới thêm)
-- Mã thể loại
-- Tên thể loại
-- Mã sản phẩm 
-- Tên sản phẩm
SELECT c.CategoryID, c.CategoryName, p.ProductID,p.ProductName
FROM dbo.Categories c
LEFT JOIN dbo.Products p
ON c.CategoryID = p.CategoryID;
-- LEFT JOIN => lấy dữ liệu mới thêm bảng bên trái

-- Edit data Customers
-- Mã đơn hàng
-- Tên công ty khách hàng
SELECT o.OrderID, c.CompanyName
FROM dbo.Orders o
RIGHT JOIN dbo.Customers c
ON o.CustomerID = c.CustomerID;

-- Edit data Products, Categories đã edit ở trên
-- Từ bảng Products và Categories, hãy in ra:
-- Mã thể loại
-- Tên thể loại
-- Mã sản phẩm 
-- Tên sản phẩm
SELECT c.CategoryID, c.CategoryName, p.ProductID,p.ProductName
FROM dbo.Categories c
FULL JOIN dbo.Products p
ON c.CategoryID = p.CategoryID;