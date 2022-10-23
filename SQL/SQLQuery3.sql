
use TestDB;
----------------------------------------
drop table nhanvien;
create table nhanvien(
ID int,
Ten varchar(50),
Tuoi int,
diachi varchar (50),
luong int);
insert into nhanvien
values(1,'Thanh',32,'Da Nang',2000),
(2,'Hong',27,'Da Nang',2000),
(3,'Lan',30,'Quang Nam',3000),
(4,'Phong',20,'Khanh Hoa',4500),
(5,'Dung',23,'Quang Nam',4100),
(6,'Trung',25,'Quang Ngai',4200),
(7,'Tai',22,'Quang Nam',4300);
select * from nhanvien;
-------------------------------------truy van con-------------------------
select Ten,luong from nhanvien
where ID in (select ID from nhanvien where luong >=4000);
--------------------------------------------------------------------------------
drop table Store_information;
create table Store_information(
store_name varchar(50),
sales int,
txn_date date);
insert into Store_information
values('los angeles',1500,'1945-01-23'),
('san diego',250,'1945-02-23'),
('los angeles',300,'1945-03-23'),
('boston',700,'1945-04-14');
select * from Store_information;

drop table if exists Geography;
create table Geography (
region_name varchar(50),
store_name varchar(50));
insert into Geography
values('east','boston'),
('east','newyork'),
('west','los angeles'),
('west','sandiego');
select * from Geography;
---------------------------------------------------------------------------------
drop table if exists Agents;
create table Agents(
agent_code varchar(50) primary key,
agent_name varchar(50),
working_area varchar(50),
commission varchar(50),
phone_no int);
insert into Agents
values('A007','Ramasundar','Bangalore','0.15',077435902),
('A003','Alex','London','0.13',075890340),
('A008','Alford','New york','0.12',076890332),
('A011','Ravi kumar','Bangalore','0.15',078900123),
('A010','Santakumar','Chennai','0.14',077940340),
('A012','Lucida','San jose','0.12',075490134),
('A005','Anderson','Brisban','0.13',075498032),
('A001','Subbarao','Bangalore','0.14',076901121),
('A002','Mukesh','Mumbai','0.11',098345023),
('A006','Meden','London','0.15',0989232505),
('A004','Ivan','Torento','0.15',098890946),
('A009','Benjamin','Hampshair','0.11',099890543);
select * from Agents;

drop table if exists Orders;
create table Orders(
ord_num int,
ord_amount int,
advance_amount int,
ord_date date,
Cust_code varchar(50),
agent_code varchar (50),
Ship_city varchar (50)
foreign key (agent_code) references Agents(agent_code) on update cascade on delete cascade);

insert into Orders
values(200105,2500,500,'2010-02-13','C00025','A011','Bangalore'),
(200112,2000,400,'2010-03-20','C00016','A007','London'),
(200113,4000,600,'2010-03-25','C00022','A002','Mumbai'),
(200117,800,200,'2010-04-10','C00014','A001','New york'),
(200130,2500,400,'2010-05-20','C00025','A011','Bangalore');
select * from Orders;

----------------------------------------------single row subwery-tra ve toi da 1 ban ghi--------------------------
select agent_code, agent_name, phone_no from Agents
where agent_name in (select agent_name from Agents where agent_name= 'Alex');
----------------------------------------------Multiple row subquery-------------------------
select ord_num, ord_amount, ord_date,Cust_code,agent_code from Orders where agent_code in
(select agent_code from Agents where working_area = 'Bangalore');
-----------------------------------------Multiple column subquery------------------------------
select agent_code,ord_num,ord_date,ord_amount from orders
where ord_amount in
(select min(ord_amount) from Orders);
------------------------------------------------correlated subquery-////-------------------------
select * from Orders as o
where agent_code in (select agent_code from Agents as a where o.Ship_city=a.working_area);
------------------------------------------------Nested subquery-truy van long------------------------------
select * from Orders where Ship_city in
(select distinct working_area from Agents where agent_code in
(select agent_code from Agents where commission >= '0.14'));
---------------------------------------------------lab 8, cau 88---------------------------------
drop table if exists actor;
create table actor(
actor_id int primary key,
first_name varchar(50),
last_name varchar(50),
last_update varchar(50));
insert into actor 
values(1,'Penelope','Guiness','2010-02-13 04:20:54'),
(2,'Nick','Wahlberg','2010-02-13 04:20:54'),
(3,'Ed','Chase','2010-02-13 04:20:54'),
(4,'Jennifer','Davis','2010-20-13 04:20:54'),
(5,'Johnny','Lollobrigida','2010-02-13 04:20:54');
select * from actor;
--------------------------------------
drop table if exists film;
create table film(
film_id int primary key,
title varchar(50));
insert into film
values(1,'Academy Dinosaur'),
(2,'Ace Goldfinger'),
(3,'Adaptation Holes');
select * from film;
-------------------------------------------
drop table if exists film_actor;
create table film_actor(
actor_id int foreign key (actor_id) references actor(actor_id) on update cascade on delete cascade,
film_id int foreign key (film_id) references film(film_id) on update cascade on delete cascade,
last_update varchar(50));
----foreign key (actor_id) references actor(actor_id) on update cascade on delete cascade---
insert into film_actor
values(1,1,'2010-02-13 05:40:35'),
(4,1,'2010-02-13 05:40:35'),
(1,3,'2010-02-13 05:40:35'),
(2,3,'2010-02-13 05:40:35');
select * from film_actor;
--------------------------------------------------
select first_name, last_name from actor where actor_id in
(select actor_id from film_actor where film_id in
(select film_id from film where title = 'Academy Dinosaur'))
order by first_name asc;

select actor_id from film_actor where film_id in
(select film_id from film where title = 'Academy Dinosaur');

select top(30) percent actor_id from film_actor;



