use lab;

drop table if exists Nhanvien;
create table Nhanvien (
Manv int primary key,
Hoten nvarchar(50),
Ngaysinh date,
Quequan nvarchar(50));

insert into Nhanvien
values(31000,N'Trần Văn Cảnh','1985-05-28',N'Thái Bình'),
(31002,N'Dương Thị Hiếu','1984-11-01',N'Nam Định'),
(31003,N'Nguyễn Thị Nga','1988-04-16',N'Bắc Ninh'),
(31004,N'Lưu Thị Thiết','1988-02-24',N'Bắc Ninh'),
(31005,N'Ngô Thị Hà','1989-12-28',N'Thái Nguyên'),
(31006,N'Lâm Văn Hoán','1990-02-08',N'Hải Phòng'),
(31007,N'Bùi Thị Thấm','1991-03-25',N'Quảng Ninh'),
(31008,N'Ngô Thượng Tuấn','1984-01-13',N'Quảng Ninh'),
(31009,N'Nguyễn Văn Tâm','1984-12-15',N'Hưng yên'),
(31010,N'Lê Thị Thu Ngọc','1985-09-24',N'Nghệ An'),
(31011,N'Hà Ngọc Linh','1991-09-15',N'Khánh Hòa'),
(31012,N'Nguyễn Văn Nam','1984-09-22',N'Thanh Hóa'),
(31013,N'Lường Văn Nam','1992-02-08',N'Thanh Hóa');

select * from Nhanvien;
select getdate();

select distinct Quequan from Nhanvien;
select top 2 Manv from Nhanvien;
-------------------them cột----------------
alter table Nhanvien
add Sdt int;
-------------------xóa cột---------------------
alter table Nhanvien
drop column Sdt;
--------------------thay đổi liểu dữ liệu của cột------------
alter table Nhanvien
alter column Sdt char(15);
------------
alter table Nhanvien
alter column Sdt int;
-------------------------Xóa ràng buộc-----------------
alter table Nhanvien
drop constraint PK__Nhanvien__2724CB023B2D9899;
-------------------------------thêm ràng buộc---------------
alter table Nhanvien
add constraint pk_Nhanvien primary key(Manv);
alter table Nhanvien
add constraint uc_Nhanvien123 unique(Hoten);
------------------------------truncate-----------------
truncate table Nhanvien;
-------------------------------------------rename---------------------
exec sp_rename 'Nhanvien.Quequan', 'Diachi' , 'column';
create index Mucluc on Nhanvien (Manv,Hoten,Ngaysinh,Quequan);
