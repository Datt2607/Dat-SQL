-- Thêm một khách hàng mới
insert into dbo.Customers ([CustomerID], [CompanyName], [ContactName],[Phone])
values ('KH123','xenda','tu van dat','0123456789')

-- Nếu không điền tên cột, thì phải đưa đủ các value tương ứng số vột
insert into dbo.Customers
values ('KH456','xenda','tu van dat','0123456789',null,null,'-',null,null,null,null)

-- Thêm nhiều khách hàng mới cùng lúc
insert into dbo.Customers ([CustomerID], [CompanyName], [ContactName],[Phone])
values 
	('KH122','xenda','tu van dat','0123456789'),
	('KH124','xenda','tu van dat','0123456789'),
	('KH125','xenda','tu van dat','0123456789'),
	('KH126','xenda','tu van dat','0123456789');


-- Tại sao bỏ qua ProductID
insert into Products ([ProductName], SupplierID, CategoryID, QuantityPerUnit, UnitPrice,[UnitsInStock])
values ('new product', 1, 2,'24 bottles',10.99, 100);
-- Identity Specification = True | Identity Increment = 1
-- ID tự động tăng lên dù ko insert ID
-- Khóa tự động tăng -> có thể bỏ qua trong viết values