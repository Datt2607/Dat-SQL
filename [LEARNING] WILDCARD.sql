-- Tất cả khách hàng có tên liên hệ bằng đầu bằng 'H' và có chữ thứ 2 là bất kỳ ký tự nào
SELECT *
FROM dbo.Customers
WHERE [ContactName] LIKE 'H_%';

-- Tất cả đơn hàng được gửi đến thành phố chữ cái đầu L, chữ cái thứ hai là u hoặc o
SELECT *
FROM dbo.Orders
WHERE [ShipCity] LIKE 'L[u,o]%';

-- Tất cả đơn hàng được gửi đến thành phố chữ cái đầu L, chữ cái thứ hai không phải là u hoặc o
SELECT [OrderID],[ShipCity]
FROM dbo.Orders
WHERE [ShipCity] LIKE 'L[^u,o]%';

-- Tất cả đơn hàng được gửi đến thành phố chữ cái đầu L, chữ cái thứ hai là từ a đến e
SELECT [OrderID],[ShipCity]
FROM dbo.Orders
WHERE [ShipCity] LIKE 'L[a-e]%';

-- Tất cả nhà cung cấp có tên công ty bắt đầu bằng A, không chứa ký tự b
SELECT [SupplierID], [CompanyName]
FROM dbo.Suppliers
WHERE [CompanyName] LIKE 'A%' AND [CompanyName] NOT LIKE '%b%';