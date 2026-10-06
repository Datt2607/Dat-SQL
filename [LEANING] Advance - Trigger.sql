-- Trigger khi insert sẽ chuyển ProductName về viết hoa toàn bộ
create trigger MakeProductNameUpperCase
on [dbo].[products_1]
after insert
as
begin
	update products_1
	set ProductName = upper(i.ProductName)
	from inserted i
	where products_1.ProductID = i.ProductID
end
-- Test
insert dbo.products_1([ProductName],[SupplierID],[CategoryID],[Discontinued])
values ('test name',1,1,0);

-- Viết trigger để đảm bảo rằng mỗi khi có 
-- một chi tiết đơn hàng mới được thêm vào
-- số lượng tồn kho giảm đi tương ứng
create trigger UpdateProductInventory
on [dbo].[Order Details]
after insert
as
begin
	update dbo.Products
	set [UnitsInStock] = [UnitsInStock] - (select [Quantity] from inserted where dbo.Products.ProductID = inserted.ProductID)
	where dbo.Products.ProductID in (select [ProductID] from inserted)
end
-- Test
insert into dbo.[Order Details]([OrderID],[ProductID],[UnitPrice],[Quantity],[Discount])
values (10248,79,10,50,0);