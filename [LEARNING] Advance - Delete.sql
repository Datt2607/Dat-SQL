-- Sử dụng Select Into tạo ra bảng tạm thời 
-- trước khi thực hành Delete
select *
into customers_1
from dbo.Customers

-- Xóa đi khách hàng 'ALFKI'
delete from dbo.customers_1 
where [CustomerID] like 'ALFKI';

-- Xóa đi toàn bộ khách hàng có tên quốc gia bắt đầu = U
delete from dbo.customers_1
where [Country] like 'U%';

-- Cẩn thận với Delete mà không có Where
-- Sẽ mất hết dữ liệu