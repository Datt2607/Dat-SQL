-- Thay tên các cột
SELECT [CompanyName] AS [Tên công ty],
		[PostalCode] AS [Mã bưu điện]
FROM dbo.Customers;

-- Thay thế LastName là họ và đệm, FirstName là tên
SELECT [LastName] AS [Họ và tên đệm], [FirstName] AS [Tên]
FROM dbo.Employees;

-- Lấy ra 15 dòng đầu các cột trong bảng Order, tên thay thế cho bảng là "o"
SELECT TOP 15 [o].*
FROM dbo.Orders AS "o"