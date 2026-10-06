-- tạo ra 1 Table trong Database NVDB
create table NhanVien(
	MaNV int not null primary key,
	HoTen varchar(50) not null,
	Phai varchar(50),
	NgaySinh date,
	DiaChi varchar(255),
	SDT varchar(10)
);

-- Tao table khach hang
create table KhachHang(
	MaKH int identity(100,5) not null primary key,
	TenKH varchar(50) not null,
	DiaChi varchar(255),
	SDT varchar(10) check (SDT like '[0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9][0-9]')
);
-- identity(x,y): bắt đầu từ x, mỗi lần tăng lên 5


-- thêm cột Email trong Table NhanVien
alter table NhanVien
add Email varchar(100);

-- Mở rộng giới hạn column HoTen lên 100 ký tự
alter table NhanVien
alter column HoTen varchar(100);

-- Không thể có người nhân viên add vào sinh ngày sau bây giờ
alter table NhanVien
add constraint NgaySinhCheck check (Ngaysinh <= GetDate());

-- Xóa toàn bộ dữ liệu, để lại cấu trúc bảng
truncate table NhanVien;

-- Xóa toàn bộ bảng
drop table NhanVien;