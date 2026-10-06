-- Các sản phẩm có số lượng trong kho nhỏ hơn 50 hoặc lớn hơn 100
SELECT *
FROM dbo.Products
WHERE [UnitsInStock] < 50 OR [UnitsInStock] > 100;

-- Các đơn hàng được giao đến Brazil đã bị giao muộn
SELECT *
FROM dbo.Orders
WHERE [ShipCountry] = 'Brazil' AND [ShippedDate] > [RequiredDate];

-- Các sản phẩm có giá dưới 100$ và mã thể loại khác 1
SELECT *
FROM dbo.Products
WHERE NOT ([UnitPrice] >= 100 OR [CategoryID] = 1);