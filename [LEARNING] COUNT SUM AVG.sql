-- Đếm số lượng khách hàng có trong bảng
SELECT COUNT(*) AS [Number_of_Customers]
FROM dbo.Customers;

-- Tính tổng số tiền vận chuyển của tất cả đơn hàng
SELECT SUM([Freight]) AS [Sum_of_Freight]
FROM dbo.Orders;

-- Tính trung bình số lượng đặt hàng của tất cả sản phẩm trong bảng [Order Detail]
SELECT AVG([Quantity]) AS [AVG_Quantity]
FROM dbo.[Order Details];

-- Đếm số lượng, tính tổng số lượng hàng trong kho và trung bình giá các sản phẩm có trong bảng Product
SELECT COUNT(*) AS [So_luong_hang_trong_kho],
	   SUM([UnitsInStock]) AS [Tong_so_hang_trong_kho],
	   AVG([UnitPrice]) AS [Gia_trung_binh_cac_san_pham]
FROM [dbo].[Products];