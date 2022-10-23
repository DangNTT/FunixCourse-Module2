create database Lab;
use Lab;

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

----------------------------------------lab 6,cau 48-----------------------------
drop table if exists actor;
create table actor (
actor_id int,
first_name varchar(50),
last_name varchar(50),
birthdate date);
insert into actor
values(1,'Penelope','Guiness','1998-02-01 00:00:00'),
(2,'Nick','Wahlberg','1997-01-01 00:00:00'),
(3,'Ed','Chase','1998-02-06 00:00:00'),
(4,'Jennifer','Davis','1999-12-12 00:00:00'),
(5,'Johnny','Lollobrigida','2001-01-02 00:00:00');

SELECT
concat(first_name,' ',last_name) as full_name, birthdate 
FROM actor
ORDER by birthdate desc;        

