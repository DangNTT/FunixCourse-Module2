use QuanLyNhanSu;
create table NHANVIEN1(
Manv varchar(30),
Tennv nvarchar(100),
Ngaysinh date);
select * from NHANVIEN;
Update NHANVIEN
set HoTen=N'Nguyễn thị Thanh Dang' where MaNv = 31005;
delete from NHANVIEN
where MaNv = 31005;
select NHANVIEN.MaNv, NHANVIEN.HoTen, HOPDONGLAODONG.MaHD, HOPDONGLAODONG.LoaiHD from NHANVIEN
inner join HOPDONGLAODONG on HOPDONGLAODONG.MaNv = NHANVIEN.MaNv;
select * from BANGLUONG;
select avg(LuongCoBan+PhuCap) from BANGLUONG;
select Max(LuongCoBan) from BANGLUONG;
select top 3 LuongCoBan from BANGLUONG
order by LuongCoBan desc;
select PHONGBAN.TenPB, count(NHANVIEN.MaNv) from NHANVIEN
inner join PHONGBAN on PHONGBAN.MaPB= NHANVIEN.MaPB
group by PHONGBAN.TenPB
order by Count(NHANVIEN.MaNv) desc;
