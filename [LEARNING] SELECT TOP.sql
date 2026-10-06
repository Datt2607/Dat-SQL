-- Năm dòng đầu tiên trong bảng Customer
SELECT TOP 5 *
FROM dbo.Customers;

-- Lấy 30% nhân viên công ty hiện tại
SELECT TOP 30 percent *
FROM dbo.Employees;

-- Lấy ra các mã khách hàng trong bảng đơn hàng với mã khách hàng không trùng lặp, 5 dòng đầu tiên
SELECT DISTINCT TOP 5 [CustomerID]
FROM dbo.Orders;