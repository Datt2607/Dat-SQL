-- Tổng số lượng đơn hàng từng tháng mỗi năm trên bảng Order
create view MonthlySales as
select year([OrderDate]) as 'Nam', month([OrderDate]) as 'Thang',
		count([OrderID]) as 'So luong don hang'
from dbo.Orders
group by year([OrderDate]), month([OrderDate]);

--
create view CustomerOrders as
select c.CustomerID,
		c.CompanyName,
		c.ContactName,
		o.OrderID,
		o.OrderDate,
		o.ShipCountry
from Customers c
join Orders o on c.CustomerID = o.CustomerID;
