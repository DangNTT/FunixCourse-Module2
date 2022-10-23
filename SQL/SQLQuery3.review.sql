use QuanLyNhanSu;
select * from BANGLUONG;
select sum(LuongCoBan + PhuCap) from BANGLUONG;
select max(LuongCoBan) from BANGLUONG;

select top 2 LuongCoBan from BANGLUONG
order by LuongCoban desc;

select * from NHANVIEN
inner join HOPDONGLAODONG on HOPDONGLAODONG.MaNv = NHANVIEN.MaNv;


select * from NHANVIEN;
select * from HOPDONGLAODONG;

update NHANVIEN
set HoTen =N'Nguyễn Thị Thanh Dang'
where MaNv = 31005;

delete from NHANVIEN
where MaNv = 31005;

