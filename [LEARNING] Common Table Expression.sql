-- Nâng cao hiệu suất truy vấn
with short_e as (
	select [EmployeeID],[LastName],[FirstName]
	from dbo.Employees
)
select *
from short_e;

-- Lấy thông tin về đơn hàng cùng với tổng giá trị đơn hàng
-- và tỷ lệ giữa tổng giá trị và phí giao hàng
with OrderTotals as (
	select [OrderID], sum(od.[Quantity]*od.[UnitPrice]) as TotalPrice
	from dbo.[Order Details] od
	group by [OrderID]
)
select
	o.[OrderID],
	o.[OrderDate],
	o.[Freight],
	ot.[TotalPrice]/o.[Freight] as Ratio
from dbo.Orders o
join OrderTotals ot on o.OrderID = ot.OrderID;