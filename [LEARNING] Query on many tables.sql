-- In ra thông tin từ bảng Products và Categories
SELECT c.CategoryID, c.CategoryName, p.ProductID, p.ProductName
FROM dbo.Products AS p, dbo.Categories AS c
WHERE c.CategoryID = p.CategoryID;

-- In ra thông tin từ bảng Employees và Orders
SELECT o.EmployeeID, e.LastName, e.FirstName, COUNT(o.[OrderID]) AS [Total Order]
FROM dbo.Orders AS o, dbo.Employees AS e
WHERE o.EmployeeID = e.EmployeeID
GROUP BY o.EmployeeID, e.LastName, e.FirstName;

-- In ra thông tin từ bảng Customers và Orders
SELECT c.CustomerID, c.CompanyName, c.ContactName, COUNT(o.[OrderID]) AS [TotalOrder]
FROM dbo.Customers AS c, dbo.Orders AS o
WHERE c.CustomerID = o.CustomerID AND c.Country = 'UK'
GROUP BY c.CustomerID,c.CompanyName, c.ContactName;

-- In ra thông tin từ bảng Orders và Shippers
SELECT s.ShipperID, s.CompanyName, SUM(o.[Freight]) AS [TotalFreight]
FROM dbo.Shippers AS s, dbo.Orders AS o
WHERE s.ShipperID = o.ShipVia
GROUP BY s.ShipperID, s.CompanyName
ORDER BY SUM(o.[Freight]) DESC;

-- In ra thông tin từ bảng Products và Suppliers
SELECT TOP 1 s.SupplierID, s.CompanyName, COUNT(p.[ProductID]) AS [Number_of_type_product]
FROM dbo.Products AS p, dbo.Suppliers AS s
WHERE s.SupplierID = p.SupplierID
GROUP BY s.SupplierID, s.CompanyName
ORDER BY COUNT(p.ProductID) DESC;

-- In ra thông tin từ bảng Orders và Order Detail
SELECT o.OrderID, SUM(od.[UnitPrice]*od.[Quantity]*(1-od.[Discount])) AS [Total_amount_money]
FROM dbo.[Orders] AS o, dbo.[Order Details] AS od
WHERE o.OrderID = od.OrderID
GROUP BY o.OrderID;

-- In thông tin từ 3 bảng Order Detail,Orders, Employees
-- Mã đơn hàng
-- Tên nhân viên
-- Tổng số tiền sản phẩm của đơn hàng
SELECT o.OrderID, e.LastName, e.FirstName, SUM(od.[UnitPrice]*od.[Quantity]*(1-od.[Discount])) AS [Total_amount_money]
FROM dbo.[Order Details] AS od, dbo.Orders AS o, dbo.Employees AS e
WHERE od.OrderID = o.OrderID AND o.EmployeeID = e.EmployeeID
GROUP BY o.OrderID, e.LastName, e.FirstName;
