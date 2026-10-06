-- Những khách hàng đặt nhiều hơn 20 đơn hàng, sắp xếp theo thứ tự tổng số đơn hàng giảm dần
SELECT [CustomerID],COUNT([OrderID]) AS [TotalOrder]
FROM dbo.Orders
GROUP BY [CustomerID]
HAVING COUNT([OrderID])>20
ORDER BY COUNT([OrderID]) DESC;

-- Những nhà cung cấp sản phẩm có tổng số lượng hàng trong kho lớn hơn 30, giá trung bình đơn giá có giá trị dưới 50
SELECT [SupplierID], SUM([UnitsInStock]) AS [So_hang_trong_kho], AVG([UnitPrice]) AS [Gia_trung_binh_don_vi]
FROM dbo.Products
GROUP BY [SupplierID]
HAVING SUM([UnitsInStock]) > 30 AND AVG([UnitPrice]) < 50;

-- Tổng số tiền vận chuyển của từng tháng, trong nửa năm sau của năm 1996, tổng tiền vận chuyển lớn hơn 1000$, sắp xếp theo tháng tăng dần
SELECT MONTH([ShippedDate]) AS [Thang_van_chuyen], SUM([Freight]) AS [Tong_tien_van_chuyen]
FROM dbo.Orders
WHERE YEAR([ShippedDate]) = '1996' AND MONTH([ShippedDate]) BETWEEN '07' AND '12'
GROUP BY MONTH([ShippedDate])
HAVING SUM([Freight]) > 1000
ORDER BY MONTH([ShippedDate]) ASC;
