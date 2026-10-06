select count(*)
from Sales.SalesOrderDetail;

-- Bật hiển thị thống kê về tài nguyên
set statistics io on;

-- Truy vấn
select *
from Sales.SalesOrderDetail
where [CarrierTrackingNumber] = '1B2B-492F-A9';

-- Tắt hiển thị thống kê tài nguyên
set statistics io off;

-- Tạo index cho [CarrierTrackingNumber]
create index idx_CarrierTrackingNumber
on [Sales].[SalesOrderDetail] ([CarrierTrackingNumber]);