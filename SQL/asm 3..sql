use QuanLyNhanSu;
----------------------------create table PHONGBAN-------------------------
drop table if exists PHONGBAN;
create table PHONGBAN (
MaPB char(15) not null Primary key,
TenPB nvarchar (50) not null,
MoTa nvarchar (100),
DiaChi nvarchar(30),
SoDienThoai char(15));
---------------------
insert into PHONGBAN
values ('PB01',N'Phòng Kế Toán',N'Trạng thái hoạt động',N'P601-Tòa KANGNAM,Phạm Hùng','0935558888'),
('PB02',N'Phòng Hành Chính',N'Chờ chuyển giao',N'P604-Tòa KANGNAM,Phạm Hùng','0935558889'),
('PB03',N'Phòng Kế Hoạch',N'Trạng thái hoạt động',N'P602-Tòa KANGNAM,Phạm Hùng','0935558886'),
('PB04',N'Phòng Nhân Sự',N'Trạng thái hoạt động',N'P701-Tòa KANGNAM,Phạm Hùng','0943708888'),
('PB05',N'Phòng Chăm Sóc',N'Trạng thái hoạt động',N'P705-Tòa KANGNAM,Phạm Hùng','0946898989'),
('PB06',N'Phòng Marketing',N'Trạng thái hoạt động',N'P605-Tòa KANGNAM,Phạm Hùng','0977778868');
select * from PHONGBAN;

----------------------------create table BANGLUONG-------------------------
drop table if exists BANGLUONG;
create table BANGLUONG (
BacLuong char(15) not null Primary key,
LuongCoBan decimal(15,2),
PhuCap decimal(15,2));
--------------------------
insert into BANGLUONG
values ('BLCV1',12000000,1500000),
('BLCV2',15000000,2500000),
('BLGD',75000000,15000000),
('BLKS1',18000000,300000),
('BLKS2',20000000,3000000),
('BLKS3',25000000,3000000),
('BLPGD1',60000000,10000000),
('BLPGD2',65000000,10000000),
('BLTP',35000000,5000000);
SELECT * FROM BANGLUONG;
---------------------------create table NHANVIEN----------------------------
drop table if exists NHANVIEN;
Create table NHANVIEN (
MaNv char(15) not null Primary key,
HoTen nvarchar(50) not null,
NgaySinh date,
QueQuan nvarchar(100),
GioiTinh nvarchar (4),
SoDienThoai char(15) not null,
DanToc nvarchar(10),
TonGiao nvarchar(10),
ChucVu nvarchar(20),
NgayVao date not null,
MaPB char(15) foreign key (MaPB) references PHONGBAN(MaPB) on update cascade on delete cascade,
BacLuong char(15) foreign key (BacLuong) references BANGLUONG(BacLuong) on update cascade on delete cascade);
------------------------
insert into NHANVIEN
values 
('31000',N'Trần Văn Cảnh','1985-05-28',N'Thái Bình',N'Nam','0935893421',N'Kinh',N'Không',N'Nhân viên','2010-10-22','PB01','BLCV1'),
('31002',N'Dương Thị Hiếu','1984-11-01',N'Nam Định',N'Nữ','0934899040',N'Kinh',N'Không ',N'Nhân viên','2012-09-10','PB03','BLKS3'),
('31003',N'Nguyễn Thị Nga','1988-04-16',N'Bắc Ninh',N'Nữ','0932918231',N'Kinh',N'Không',N'Nhân viên','2013-01-15','PB01','BLCV1'),
('31004',N'Lưu Thị Thiết','1988-02-24',N'Bắc Ninh',N'Nữ','0935446525',N'Kinh',N'Không',N'Phó Phòng','2012-08-28','PB01','BLKS3'),
('31005',N'Ngô Thị Hà','1989-12-28',N'Thái Nguyên',N'Nam','0943987012',N'Kinh',N'Không',N'Phó Phòng','2018-01-15','PB02','BLKS2'),
('31006',N'Lâm Văn Hoán','1990-02-08',N'Hải Phòng',N'Nam','0946327211',N'Kinh',N'Không',N'Nhân viên','2013-01-15','PB02','BLKS2'),
('31007',N'Bùi Thị Thấm','1991-03-25',N'Quảng Ninh',N'Nữ','0935267122',N'Kinh',N'Không',N'Trưởng Nhóm','2020-11-10','PB01','BLKS3'),
('31008',N'Ngô Thượng Tuấn','1984-01-13',N'Quảng Ninh',N'Nam','0945367212',N'Kinh',N'Không',N'PGĐ','2014-03-12','PB03','BLPGD1'),
('31009',N'Nguyễn Văn Tâm','1984-12-15',N'Hưng yên',N'Nam','0988903214',N'Kinh',N'Không',N'Trưởng Phòng','2021-05-15','PB01','BLTP'),
('31010',N'Lê Thị Thu Ngọc','1985-09-24',N'Nghệ An',N'Nữ','0987123456',N'Kinh',N'Không',N'Thủ Quỹ','2019-05-01','PB02','BLKS2'),
('31011',N'Hà Ngọc Linh','1991-09-15',N'Khánh Hòa',N'Nữ','0983452167',N'Kinh',N'Không',N'Nhân Viên','2013-01-15','PB03','BLKS2'),
('31012',N'Nguyễn Văn Nam','1984-09-22',N'Thanh Hóa',N'Nam','0989988888',N'Kinh',N'Không',N'Trưởng Phòng','2013-01-15','PB02','BLTP'),
('31013',N'Lường Văn Nam','1992-02-08',N'Thanh Hóa',N'Nam','0935678123',N'Tày',N'Không',N'Trưởng Nhóm','2020-08-18','PB03','BLKS1'),
('31014',N'Trần Thị Bình','1984-08-27',N'Nam Định',N'Nữ','0934267189',N'Kinh',N'Không',N'Nhân Viên','2021-06-10','PB04','BLKS3'),
('31015',N'Đinh Văn Quyết','1994-10-08',N'Thái Bình',N'Nam','0935678901',N'Kinh',N'Không',N'Nhân Viên','2021-06-10','PB04','BLCV2'),
('31016',N'Đỗ Văn Hợp','1992-02-26',N'Thái Bình',N'Nam','0990983111',N'Kinh',N'Không',N'Nhân Viên','2018-02-24','PB04','BLKS1'),
('31017',N'Đỗ Thị Thúy','1995-05-23',N'Hà Nam',N'Nữ','0902349098',N'Kinh',N'Không',N'Nhân Viên','2018-03-21','PB05','BLCV2'),
('31018',N'Dương Thị Mỹ Hạnh','1993-08-29',N'Nam Định',N'Nữ','0902345167',N'Kinh',N'Không',N'Nhân Viên','2021-09-15','PB01','BLKS1'),
('31019',N'Trần Thị Liên','1988-03-15',N'Bắc Giang',N'Nữ','0902456372',N'Kinh',N'Không',N'Phó Phòng','2010-05-24','PB03','BLKS3'),
('31020',N'Phùng Chí Hiếu','1980-09-03',N'Phú Thọ',N'Nam','0935611211',N'Kinh',N'Không',N'GĐ','2007-11-23','PB05','BLGD'),
('31021',N'Đồng Thị Loan','1985-08-11',N'Lào Cai',N'Nữ','0935678900',N'Kinh',N'Không',N'Phó PHòng','2012-10-26','PB04','BLKS3'),
('31022',N'Nông Thị Kim Liên','1987-02-12',N'Thanh Hóa',N'Nữ','0905901234',N'Tày',N'Không',N'Thư Kí','2018-04-10','PB06','BLKS3'),
('31023',N'Triệu Văn Nam','1995-08-26',N'Thanh Hóa',N'Nam','0989045454',N'Kinh',N'Không',N'Nhân Viên','2019-07-10','PB02','BLCV1'),
('31024',N'Lưu Thị Trà My','1996-01-09',N'Quảng Ninh',N'Nữ','0987907654',N'Kinh',N'Không',N'Nhân Viên','2019-05-01','PB06','BLCV1'),
('31025',N'Nguyễn Trung Hiếu','1995-05-08',N'Bắc Giang',N'Nam','0945367289',N'Kinh',N'Không',N'Nhân Viên','2019-05-01','PB05','BLCV1'),
('31026',N'Nguyễn Xuân Hòa','1986-08-25',N'Thái Nguyên',N'Nam','0989076543',N'Kinh',N'Không',N'Trưởng Phòng','2012-06-18','PB03','BLTP'),
('31027',N'Nguyễn Thị Trinh','1992-07-15',N'Hưng Yên',N'Nữ','0938999012',N'Kinh',N'Không',N'Trưởng Nhóm','2014-02-24','PB04','BLKS1'),
('31028',N'Nguyễn Văn Đoàn','1991-03-03',N'Hòa Bình',N'Nam','0937902222',N'Kinh',N'Không',N'Nhân Viên','2019-05-01','PB03','BLKS2'),
('31029',N'Nguyễn Đức Thiện','1995-03-21',N'Điện Biên',N'Nam','0905009876',N'Kinh',N'Không',N'Nhân Viên','2019-05-01','PB06','BLKS3'),
('31031',N'Trần Văn Tú','1994-12-26',N'Ninh Bình',N'Nam','0989043219',N'Kinh',N'Không',N'Nhân Viên','2018-03-24','PB05','BLCV1'),
('31032',N'Đỗ Thị Quyên','1977-08-23',N'Hà Nội',N'Nữ','0985990247',N'Kinh',N'Không',N'Trưởng Nhóm','2014-02-24','PB03','BLKS3'),
('31033',N'Nguyễn Thị Lệ','1975-12-23',N'Hà Nội',N'Nữ','0985302198',N'Kinh',N'Không',N'Trưởng Phòng','2013-01-25','PB04','BLTP'),
('31034',N'Vũ Đình Duy','1996-09-25',N'Hà Nội',N'Nam','0976890123',N'Kinh',N'Không',N'Nhân Viên','2020-11-10','PB05','BLCV1'),
('31035',N'Trần Ngọc Quyền','1994-05-21',N'Hải Dương',N'Nam','0908457891',N'Kinh',N'Không',N'Trưởng Nhóm','2014-02-24','PB05','BLCV2'),
('31036',N'Vũ Huy Nam','1983-08-25',N'Nghệ An',N'Nam','0901596260',N'Kinh',N'Không',N'Trưởng Phòng','2012-11-25','PB05','BLTP'),
('31037',N'Trần Mỹ Tâm','1985-08-24',N'Hải Dương',N'Nữ','0909163812',N'Kinh',N'Không',N'Phó Phòng','2013-04-10','PB05','BLKS3'),
('31038',N'Nguyễn Đức Hải','1992-05-26',N'Thanh Hóa',N'Nam','0898635989',N'Kinh',N'Không',N'Nhân Viên','2019-07-10','PB06','BLKS1'),
('31039',N'Lưu Thị Nguyệt','1991-01-09',N'Lào Cai',N'Nữ','0939206335',N'Kinh',N'Không',N'Nhân Viên','2019-05-01','PB06','BLKS3'),
('31040',N'Trần Văn Cao','1987-05-08',N'Băc Giang',N'Nam','0909641601',N'Kinh',N'Không',N'Phó Phòng','2019-05-01','PB06','BLKS3'),
('31041',N'Vũ Thị Nhâm','1986-09-25',N'Thái Nguyên',N'Nữ','0896105754',N'Kinh',N'Không',N'Trưởng Phòng','2012-06-18','PB06','BLTP'),
('31042',N'Trần Bình Trọng','1989-07-15',N'Hưng Yên',N'Nam','0933049141',N'Kinh',N'Không',N'Trưởng Nhóm','2014-02-24','PB06','BLKS3');
select * from NHANVIEN;

-----------------------------create table HOPDONGLAODONG---------------------------
drop table if exists HOPDONGLAODONG;
create table HOPDONGLAODONG (
MaHD char(15) not null Primary key,
LoaiHD nvarchar(10) not null,
TuNgay date,
DenNgay date,
MaNv char(15) foreign key (MaNv) references NHANVIEN(MaNv) on update cascade on delete cascade);
---------------------------
insert into HOPDONGLAODONG
values 
('HD01',N'Thử việc','2010-10-22','2012-12-22','31000'),
('HD02',N'Chính thức','2012-12-23','2019-01-01','31000'),
('HD03',N'Thử việc','2010-09-10','2010-11-10','31002'),
('HD04',N'Chính thức','2010-11-11','2019-01-01','31002'),
('HD05',N'Thử việc','2013-01-15','2013-03-15','31003'),
('HD06',N'Chính thức','2013-01-16','2019-01-01','31003'),
('HD07',N'Thử việc','2012-08-28','2012-10-28','31004'),
('HD08',N'Chính thức','2012-11-29','2019-01-01','31004'),
('HD09',N'Thử việc','2018-01-15','2018-03-15','31005'),
('HD10',N'Chính thức','2018-03-16','2019-01-01','31005'),
('HD11',N'Thử việc','2013-01-15','2013-03-15','31006'),
('HD12',N'Chính thức','2013-03-16','2019-01-01','31006'),
('HD13',N'Thử việc','2020-10-11','2021-01-10','31007'),
('HD14',N'Chính thức','2021-01-10','2022-01-01','31007'),
('HD15',N'Thử việc','2014-03-12','2014-05-12','31008'),
('HD16',N'Chính thức','2014-05-13','2019-01-01','31008'),
('HD17',N'Thử việc','2021-05-15','2021-07-15','31009'),
('HD18',N'Chính thức','2021-07-16','2022-07-16','31009'),
('HD19',N'Thử việc','2019-05-01','2019-07-01','31010'),
('HD20',N'Chính thức','2019-07-02','2020-07-02','31010'),
('HD21',N'Thử việc','2013-01-15','2013-03-15','31011'),
('HD22',N'Chính thức','2013-03-16','2014-03-16','31011'),
('HD23',N'Thử việc','2013-01-15','2013-03-15','31012'),
('HD24',N'Chính thức','2013-03-16','2014-03-16','31012'),
('HD25',N'Thử việc','2020-08-08','2021-08-08','31013'),
('HD26',N'Chính thức','2020-10-09','2021-10-09','31013'),
('HD27',N'Thử việc','2021-06-10','2021-08-10','31014'),
('HD28',N'Chính thức','2021-08-11','2022-08-11','31014'),
('HD29',N'Thử việc','2018-02-24','2018-04-24','31015'),
('HD30',N'Chính thức','2018-04-25','2019-04-25','31015'),
('HD31',N'Thử việc','2018-03-21','2018-05-21','31016'),
('HD32',N'Chính thức','2018-05-22','2019-05-22','31016'),
('HD33',N'Thử việc','2021-09-15','2021-11-15','31017'),
('HD34',N'Chính thức','2021-11-16','2022-11-16','31017'),
('HD35',N'Thử việc','2010-05-24','2010-07-24','31018'),
('HD36',N'Chính thức','2010-07-25','2010-09-25','31018'),
('HD37',N'Thử việc','2019-10-05','2020-10-05','31019'),
('HD38',N'Chính thức','2020-11-15','2021-11-15','31019'),
('HD39',N'Thử việc','2007-11-23','2008-01-23','31020'),
('HD40',N'Chính thức','2008-01-24','2009-01-24','31020'),
('HD41',N'Thử việc','2012-10-26','2012-12-26','31021'),
('HD42',N'Chính thức','2012-12-27','2013-12-27','31021'),
('HD43',N'Thử việc','2018-04-10','2018-06-10','31022'),
('HD44',N'Chính thức','2918-06-11','2019-06-11','31022'),
('HD45',N'Thử việc','2019-07-10','2019-09-10','31023'),
('HD46',N'Chính thức','2019-09-11','2020-09-11','31023'),
('HD47',N'Thử việc','2019-05-01','2019-07-01','31024'),
('HD48',N'Chính thức','2019-07-02','2020-07-02','31024'),
('HD49',N'Thử việc','2019-05-01','2019-07-01','31025'),
('HD50',N'Chính thức','2019-07-02','2019-09-02','31025'),
('HD51',N'Thử việc','2012-06-18','2012-08-18','31026'),
('HD52',N'Chính thức','2012-08-19','2013-08-19','31026'),
('HD53',N'Thử việc','2014-02-24','2014-06-24','31027'),
('HD54',N'Chính thức','2014-06-25','2015-06-25','31027'),
('HD55',N'Thử việc','2019-05-01','2019-07-01','31028'),
('HD56',N'Chính thức','2019-07-02','2020-07-02','31028'),
('HD57',N'Thử việc','2019-05-01','2019-07-01','31029'),
('HD58',N'Chính thức','2019-07-12','2020-07-12','31029'),
('HD61',N'Thử việc','2018-03-24','2018-05-24','31031'),
('HD62',N'Chính thức','2018-05-25','2019-05-25','31031'),
('HD63',N'Thử việc','2014-02-24','2014-04-24','31032'),
('HD64',N'Chính thức','2014-04-25','2015-04-25','31032'),
('HD65',N'Thử việc','2013-01-25','2013-03-25','31033'),
('HD66',N'Chính thức','2013-03-26','2014-03-26','31033'),
('HD67',N'Thử việc','2020-11-10','2021-01-10','31034'),
('HD68',N'Chính thức','2021-01-11','2022-01-11','31034'),
('HD69',N'Thử việc','2014-02-24','2014-04-24','31035'),
('HD70',N'Chính thức','2014-04-25','2015-04-25','31035'),
('HD71',N'Thử việc','2012-11-25','2013-11-25','31036'),
('HD72',N'Chính thức','2013-01-26','2014-01-26','31036'),
('HD73',N'Thử việc','2013-04-10','2013-06-10','31037'),
('HD74',N'Chính thức','2013-06-11','2014-06-11','31037'),
('HD75',N'Thử việc','2019-07-10','2019-09-10','31038'),
('HD76',N'Chính thức','2019-09-11','2020-09-11','31038'),
('HD77',N'Thử việc','2019-05-01','2019-07-01','31039'),
('HD78',N'Chính thức','2019-07-02','2020-07-02','31039'),
('HD79',N'Thử việc','2019-05-01','2019-07-01','31040'),
('HD80',N'Chính thức','2019-07-01','2020-07-01','31040'),
('HD81',N'Thử việc','2012-06-18','2012-08-18','31041'),
('HD82',N'Chính thức','2012-08-19','2013-08-19','31041'),
('HD83',N'Thử việc','2014-02-24','2014-04-24','31042'),
('HD84',N'Chính thức','2014-04-25','2015-04-25','31042');
select * from HOPDONGLAODONG;
--------------------------------------------------------------------------------------------------------------------