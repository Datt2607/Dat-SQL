-- Cập nhật thông tin của một khách hàng trong bảng Customers
update [dbo].[customers_1]
set [Address] = 'New Address'
where [CustomerID] = 'ANATR';

--
select  *
into dbo.products_1
from dbo.Products;
-- Tăng giá toàn bộ sản phẩm lên 10%
update dbo.products_1
set UnitPrice = UnitPrice*1.1;

-- Cập nhật thông tin của sản phẩm có productID là 7 trong bảng Products
-- để thay đổi tên sản phẩm thành 'May tinh xach tay moi'
-- và cập nhật giá bán thành 999.99 $
update dbo.products_1
set [ProductName] = 'May tinh xach tay moi', [UnitPrice] = 999.99
where [ProductID] = 7;