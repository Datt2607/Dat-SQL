-- Danh sách sản phẩm có giá bản trong khoảng 10-20$
SELECT *
FROM dbo.Products
WHERE [UnitPrice] BETWEEN 10 AND 20;

-- Danh sách đơn đặt hàng trong khoảng thời gian 1996-07-01 đến 1996-07-31
SELECT *
FROM dbo.[Orders]
WHERE [OrderDate] BETWEEN '1996-07-01' AND '1996-07-31';