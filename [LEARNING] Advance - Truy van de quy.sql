-- fibonacci
with fibo(prev_n,n) as (
	-- khoi tao
	select
		0 as prev_n,
		1 as n
	union all
	-- de quy
	select
		n as prev_n,
		prev_n+n as n
	from fibo
	)
select * from fibo
option (maxrecursion 5);


-- giaithua -- S(n) = n*S(n-1)
with giaithua(stt,gt) as (
	-- khoi tao
	select
		1 as stt,
		1 as gt
	union all
	-- de quy
	select
		stt+1 as stt,
		gt*(stt+1) as gt
	from giaithua
	)
select * from giaithua
option (maxrecursion 5);

-- Truy vấn đệ quy để tạo 1 cây cấu trúc quản lý của nhân viên trong bảng Employees
-- Trong đó "Reports To" chỉ là mã của người quản lý
declare @eID int
set @eID = 2;

with e_cte as (
	-- khoi tao
	select e.[EmployeeID], 
			e.FirstName+' '+e.LastName as Name,
			e.ReportsTo as ManagerID,
			0 as level
	from dbo.Employees e
	union all
	-- de quy
	select e1.[EmployeeID], 
			e1.FirstName+' '+e1.LastName as Name,
			e1.ReportsTo as ManagerID,
			level+1 as level
	from dbo.Employees e1
	join e_cte on e1.ReportsTo = e_cte.EmployeeID
)
select * from e_cte
option (maxrecursion 500)