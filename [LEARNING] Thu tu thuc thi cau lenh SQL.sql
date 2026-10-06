select p.ProductID, p.ProductName --2
from dbo.Products p; --1


select p.ProductID, p.ProductName --3
from dbo.Products p --1
where p.CategoryID = 1; --2


select p.ProductID, count(p.ProductID) as [TotalProducts] --4
from dbo.Products p --1
where p.CategoryID = 1 --2
group by p.CategoryID; --3

select p.ProductID, count(p.ProductID) as [TotalProducts] --5
from dbo.Products p --1
where p.CategoryID in  (1,2,3,4,5,6) --2
group by p.CategoryID --3
having count(p.ProductID) >= 10 --4 [TotalProducts] chưa tồn tại
order by [TotalProducts] asc --6 [TotalProducts] đã tồn tại
