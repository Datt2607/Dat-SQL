-- Tất cả khách hàng đến từ các quốc gia bắt đầu bằng A
SELECT *
FROM dbo.Customers
WHERE [Country] LIKE 'A%';

-- Các đơn đặt được gửi đến các thành phố có chứa chữ a
SELECT *
FROM dbo.Orders
WHERE [ShipCity] LIKE '%a%';

-- 'U_' -> 1 ký tự cho mỗi 1 dấu _
SELECT *
FROM dbo.Orders
WHERE [ShipCountry] LIKE 'U_';
-- 'U%' không giới hạn ký tự đại diện cho %
SELECT *
FROM dbo.Orders
WHERE [ShipCountry] LIKE 'U%';