-- Các đơn hàng chưa được giao hàng
SELECT COUNT(*) AS 'Number_of_unshipped'
FROM dbo.Orders
WHERE [ShippedDate] IS NULL;

-- Danh sách các khách hàng có khu vực (Region) không null
SELECT *
FROM dbo.Customers
WHERE [Region] IS NOT NULL;

-- Tất cả đơn hàng chưa được giao và có khu vực giao hàng ShipRegion không NULL
SELECT *
FROM dbo.Orders
WHERE [ShippedDate] IS NULL AND [ShipRegion] IS NOT NULL;