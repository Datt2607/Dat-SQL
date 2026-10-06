-- Tạo ra một stored procedure để lấy thông tin
-- về sản phẩm dựa trên tên sản phẩm được cung cấp
create procedure GetProductByName
	@ProductName nvarchar(100)
as
begin
	select *
	from dbo.Products p
	where p.ProductName = @ProductName
end;

-- Sử dụng
exec GetProductByName @ProductName = 'Chai';

-- Tạo ra một stored procedure để tính tổng doanh số bán hàng
-- của một nhân viên dựa trên EmployeeID
create procedure GetEmployeeSalesTotalNotDiscount
	@EmployeeID int
as
begin
	select sum(Quantity*UnitPrice) as TotalSales
	from dbo.Orders o
	join dbo.[Order Details] od on o.OrderID = od.OrderID
	where o.EmployeeID = @EmployeeID
end;

-- Sử dụng
exec GetEmployeeSalesTotalNotDiscount @EmployeeID = 1;

-- Tạo một stored prodcedure để thêm mới khách hàng vào bảng Customers
create procedure AddCustomer
	@CustomerID nvarchar(5),
	@CompanyName nvarchar(40),
	@ContactName nvarchar(30),
	@ContactTitle nvarchar(30)
as
begin
	insert into dbo.Customers ([CustomerID],[CompanyName],[ContactName],[ContactTitle])
	values (@CustomerID,upper(@CompanyName),@ContactName,@ContactTitle)
end;
-- Sử dụng
exec AddCustomer @CustomerID='NEWN',@CompanyName='titv.vn',@ContactName ='shuf',@ContactTitle='dat';

-- Tạo một stored procedure để cập nhật giá của 
-- tất cho một sản phẩm cụ thể
create procedure UpdatePrice
	@ProductID int,
	@PriceIncrease decimal (10,2)
as 
begin
	update dbo.products_1
	set UnitPrice = UnitPrice + @PriceIncrease
	where [ProductID] = @ProductID
end
-- Sử dụng
exec UpdatePrice @ProductID=1, @PriceIncrease=100;