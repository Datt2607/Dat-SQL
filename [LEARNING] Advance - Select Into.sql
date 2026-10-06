-- Tạo ra bảng mới với sản phẩm có giá > 50
select * 
into HighValueProducts
from dbo.Products
where UnitPrice > 50;
-- SELECT INTO -> Bảng được lưu trữ trên ổ cứng, không phải bảng tạm thời
-- CTE chỉ tạo ra 1 bảng tạm thời trên memory


-- Tạo ra bảng mới với các đơn hàng được giao đến USA
select *
into USAOrder
from dbo.Orders
where ShipCountry = 'USA';

-- Tạo bảng tạm thời HighValue để chứa các thông tin về các đơn hàng
-- có tổng giá trị đặt hàng lớn hơn 1000$
select od.OrderID, sum(od.UnitPrice*od.Quantity*(1-od.Discount)) as [OrderValue]
into HighValue
from dbo.[Order Details] od
join dbo.Orders o
on o.OrderID = od.OrderID
group by od.OrderID
having sum(od.UnitPrice*od.Quantity*(1-od.Discount)) > 1000;
