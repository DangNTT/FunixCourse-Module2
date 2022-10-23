----Tạo database----
Create Database SQLSystem1;
use SQLSystem1;

----Tạo bảng----
Create Table Giaovien (
MaGV int,
TenGV varchar(50),
Diachi varchar(50),
SDT int,
Namsinh date);
----sửa bảng,thêm cột dữ liệu----
alter table Giaovien add Sonamlamviec int;

Create table Hoc_sinh (
HocsinhID int,
TenHS varchar(50),
Diachi varchar(50));
---xóa--bảng---
drop table Hoc_sinh;
----xóa tất cả dữ liệu trong bảng----
Truncate table Hoc_sinh;

Create table loaihoa (
Mahoa nchar (10),
Tenhoa varchar(50));
insert into loaihoa
values (12,'hoa hong');

select * from loaihoa;
--------------------------------------getdate---------------------------------------
select getdate()+7-6;
select getdate();
--------------------------------------count(*)&count_big(*)-------------------------------
create table Example_Table(
NumberID int,
Name varchar(50));
insert into Example_Table
values (1,'one'),
(2,'two'),
(3,'three'),
(4,'four'),
(5,'five'),
('','Null'),
(0,'');
select count(*) from Example_Table as count;
select COUNT_BIG(*) from Example_Table as count_big;
-----------------------------------------------truncate-xóa dữ liệu toàn bộ trong bảng-------------------
truncate table Example_Table;
------------------------------------CAST-chuyển đổi kiểu dữ liệu-------------------------------------
-------------------------------------lab 6, câu 47-------------------------------------------
drop table if exists transactions;
create table transactions (
transaction_date date,
amount text,
fee text);
insert into transactions
values ('1999-01-08','500','20'),
('1999-01-07','403','30'),
('1999-02-08','3430','30'),
('1999-03-08','5454','40'),
('1999-04-08','1254','10');

select transaction_date, convert(int,(convert(varchar(20),amount)))
+ convert(int,(convert(varchar(20),fee))) as net_amount from transactions;

