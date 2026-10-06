-- Liệt kê toàn bộ sản phẩm
SELECT [ProductID], [ProductName], [UnitPrice]
FROM dbo.Products;

-- Tìm giá trung bình của các sản phẩm
SELECT AVG([UnitPrice])
FROM dbo.Products;

-- Lọc những sản phẩm có giá > giá trung bình
SELECT [ProductID], [ProductName], [UnitPrice]
FROM dbo.Products
WHERE [UnitPrice] > (
	SELECT AVG([UnitPrice])
	FROM dbo.Products
);

-- Lọc ra những khách hàng có số đơn hàng > 10
SELECT c.CustomerID, c.CompanyName, count(o.[OrderID]) as [TotalOrders]
FROM dbo.Customers c
LEFT JOIN dbo.Orders o
ON c.CustomerID = o.CustomerID
GROUP BY c.CustomerID, c.CompanyName
HAVING count(o.[OrderID]) > 10;
--
select *
from dbo.Customers
where [CustomerID] in (
	select [CustomerID]
	from dbo.Orders
	group by [CustomerID]
	having count([OrderID]) > 10
);

-- Tổng tiền cho từng đơn hàng
select o.*, (
	select sum(od.[Quantity]*od.[UnitPrice]*(1-od.[Discount]))
	from dbo.[Order Details] od
	where o.OrderID = od.OrderID
) as [TotalMoney]
from dbo.Orders o;

-- Lọc ra tên sản phẩm và tổng số đơn hàng của sản phẩm
select ProductName,[TotalOrder]
from 
	(select p.ProductID, p.ProductName, (
		select count(*)
		from dbo.[Order Details] od
		where od.[ProductID] = p.[ProductID]
	) as [TotalOrder]
	from dbo.Products p) as Temp;