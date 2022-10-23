create database QuanLyNhanSu;
use QuanLyNhanSu;
select * from NHANVIEN;
select * from BANGLUONG;
select * from HOPDONGLAODONG;
select * from PHONGBAN;









-------------------------------------------câu 1--------------------------------------------------
select NHANVIEN.MaNv as N'Mã Nhân Viên', NHANVIEN.HoTen as N'Họ Tên', NHANVIEN.NgaySinh as 'Ngày Sinh', 
NHANVIEN.QueQuan as N'Quê quán', NHANVIEN.SoDienThoai as N'Số điện thoại',NHANVIEN.ChucVu as N'Chức vụ',
NHANVIEN.NgayVao as N'Ngày bắt đầu',PHONGBAN.TenPB as N'Phòng ban' from NHANVIEN
inner join PHONGBAN on PHONGBAN.MaPB = NHANVIEN.MaPB
where NgayVao >='2021-03-08';

---------------------------------------câu 2-------------------------------------------
select NHANVIEN.MaNv as N'Mã Nhân Viên', NHANVIEN.HoTen as N'Họ Tên', NHANVIEN.NgaySinh as 'Ngày Sinh', 
NHANVIEN.QueQuan as N'Quê quán', NHANVIEN.SoDienThoai as N'Số điện thoại',NHANVIEN.ChucVu as N'Chức vụ',
NHANVIEN.NgayVao as N'Ngày bắt đầu',PHONGBAN.TenPB as N'Phòng ban', HOPDONGLAODONG.LoaiHD as N'Loại hợp đồng',
HOPDONGLAODONG.TuNgay as N'Ngày ký'
from NHANVIEN
inner join PHONGBAN on PHONGBAN.MaPB = NHANVIEN.MaPB
inner join HOPDONGLAODONG on HOPDONGLAODONG.MaNV = NHANVIEN.MaNv
where HOPDONGLAODONG.TuNgay >'2018-03-01' and HOPDONGLAODONG.LoaiHD = N'Chính thức';

-----------------------------------------câu 3-----------------------------------------
select distinct NHANVIEN.MaNv as N'Mã Nhân Viên', NHANVIEN.HoTen as N'Họ Tên', NHANVIEN.NgaySinh as 'Ngày Sinh', 
NHANVIEN.QueQuan as N'Quê quán', NHANVIEN.SoDienThoai as N'Số điện thoại',NHANVIEN.ChucVu as N'Chức vụ',
NHANVIEN.NgayVao as N'Ngày bắt đầu', BANGLUONG.LuongCoban as N'Lương cơ bản', BANGLUONG.PhuCap as N'Phụ cấp' from NHANVIEN
inner join PHONGBAN on PHONGBAN.MaPB = NHANVIEN.MaPB
inner join BANGLUONG on BANGLUONG.BacLuong = NHANVIEN.BacLuong
where NHANVIEN.ChucVu = N'Trưởng Phòng' and PHONGBAN.TenPB = N'Phòng Hành Chính';

----------------------------------------câu 4---------------------------------------------
select PHONGBAN.TenPB as N'Tên Phòng Ban',count(NHANVIEN.MaNv) as N'Số lượng nhân viên'
from NHANVIEN
inner join PHONGBAN on PHONGBAN.MaPB = NHANVIEN.MaPB
where TenPB =N'Phòng Kế Hoạch'
group by TenPB;

---------------------------------------câu 5---------------------------------------------
select NHANVIEN.MaNv as N'Mã Nhân Viên', NHANVIEN.HoTen as N'Họ Tên', NHANVIEN.NgaySinh as 'Ngày Sinh', 
NHANVIEN.QueQuan as N'Quê quán', NHANVIEN.SoDienThoai as N'Số điện thoại',NHANVIEN.ChucVu as N'Chức vụ',
NHANVIEN.NgayVao as N'Ngày bắt đầu',PHONGBAN.TenPB as N'Phòng ban',
(year(getdate())-year(NHANVIEN.NgayVao)) as N'Số năm làm việc'
from NHANVIEN
inner join PHONGBAN on PHONGBAN.MaPB = NHANVIEN.MaPB
where (year(getdate())- year(NHANVIEN.NgayVao))>4;

---------------------------------------câu 6-----------------------------------------------
update NHANVIEN
set NgaySinh = '1988-03-15'
where MaNv = '31019';

select NHANVIEN.MaNv as N'Mã Nhân Viên', NHANVIEN.HoTen as N'Họ Tên', NHANVIEN.NgaySinh as 'Ngày Sinh', 
NHANVIEN.QueQuan as N'Quê quán', NHANVIEN.SoDienThoai as N'Số điện thoại',NHANVIEN.ChucVu as N'Chức vụ',
NHANVIEN.NgayVao as N'Ngày bắt đầu',PHONGBAN.TenPB as N'Phòng ban' 
from NHANVIEN
inner join PHONGBAN on PHONGBAN.MaPB = NHANVIEN.MaPB
where NHANVIEN.MaNv = '31019';

---------------------------------------câu 7----------------------------------------------------
select NHANVIEN.MaNv as N'Mã Nhân Viên', NHANVIEN.HoTen as N'Họ Tên', NHANVIEN.NgaySinh as 'Ngày Sinh', 
NHANVIEN.QueQuan as N'Quê quán', NHANVIEN.SoDienThoai as N'Số điện thoại',NHANVIEN.ChucVu as N'Chức vụ',
NHANVIEN.NgayVao as N'Ngày bắt đầu',PHONGBAN.TenPB as N'Phòng ban' from NHANVIEN
inner join PHONGBAN on PHONGBAN.MaPB = NHANVIEN.MaPB
where NHANVIEN.HoTen Like '%Nam';

---------------------------------------câu 8------------------------------------------------------
delete from HOPDONGLAODONG
where MaNv = '31030'
delete from NHANVIEN
where MaNv = '31030';

select NHANVIEN.MaNv as N'Mã Nhân Viên', NHANVIEN.HoTen as N'Họ Tên', NHANVIEN.NgaySinh as 'Ngày Sinh', 
NHANVIEN.QueQuan as N'Quê quán', NHANVIEN.SoDienThoai as N'Số điện thoại',NHANVIEN.ChucVu as N'Chức vụ',
NHANVIEN.NgayVao as N'Ngày bắt đầu',PHONGBAN.TenPB as N'Phòng ban' from NHANVIEN
inner join PHONGBAN on PHONGBAN.MaPB = NHANVIEN.MaPB
where NHANVIEN.MaNv = '31030';

----------------------------------------câu 9--------------------------------------------------------
select PHONGBAN.TenPB as N'Phòng ban', NHANVIEN.QueQuan as N'Tỉnh Thành', count(NHANVIEN.MaNv) as N'Số lượng nhân viên'
from NHANVIEN
inner join PHONGBAN on PHONGBAN.MaPB = NHANVIEN.MaPB
group by PHONGBAN.TenPB, NHANVIEN.QueQuan
order by PHONGBAN.TenPB, NHANVIEN.QueQuan;

------------------------------------------câu 10-----------------------------------------------------
select PHONGBAN.TenPB as N'Tên bộ phận', avg (BANGLUONG.LuongCoBan+BANGLUONG.PhuCap) as N'Mức lương trung bình'
from PHONGBAN
inner join NHANVIEN on NHANVIEN.MaPB = PHONGBAN.MaPB
inner join BANGLUONG on BANGLUONG.BacLuong = NHANVIEN.BacLuong
group by PHONGBAN.TenPB
order by avg(BANGLUONG.LuongCoBan+BANGLUONG.PhuCap);







