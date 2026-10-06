-- Lấy ra tên các quốc gia khác nhau từ bảng Customer
SELECT DISTINCT Country
FROM dbo.Customers;

-- Lấy ra tên mã số bưu điện (PostalCode) khác nhau từ nhà cung cấp 
SELECT DISTINCT PostalCode
FROM dbo.Suppliers;

-- Lấy dữ liệu khác nhau từ về họ của nhân viên (LastName) và cách gọi danh hiệu lịch sự (TitleofCourtesy) từ bảng Employee
SELECT DISTINCT LastName, TitleOfCourtesy
FROM dbo.Employees;