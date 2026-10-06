select 
		[ProductID],
		[ProductName],
		[CategoryID],
		UnitPrice,
		rank() over (order by [UnitPrice] desc) as Ranking
from dbo.Products;

-- Xếp hạng sản phẩm theo giá giảm dần theo từng thể loại
select 
		[ProductID],
		[ProductName],
		[CategoryID],
		UnitPrice,
		rank() over (partition by [CategoryID] order by [UnitPrice] desc) as Ranking
from dbo.Products;

-- Thông tin về đơn đặt hàng và ngày đặt hàng của đơn hàng trước đó cho mỗi khách hàng
select
		[CustomerID],
		[OrderID],
		[OrderDate],
		lag ([OrderDate],1) over (partition by [CustomerID] order by [OrderDate] asc) as PreviousOrderDate
from dbo.Orders
order by [CustomerID],[OrderDate];
-- xác định gần đây khách hàng có mua hàng hay không
-- để gửi thông báo app giới thiệu mua hàng