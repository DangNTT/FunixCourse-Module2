Create database MicosoftSQL1;
use MicosoftSQL1;

drop table class;
create table class (
classID int,
Classname varchar(50),
sdt int,
ngay date,
address varchar(50));

insert into class
values (1,'run',0394213222,'2020-02-16','nguyen hung'),
(2,'swim',0932890911,'2020-03-01','ngo hang'),
(3,'sing',092712890,'2020-03-05','tran ha');
select * from class;

drop table customer;
create table customer (
customer_id int,
first_name varchar(50),
last_name varchar (50),
city varchar (50),
country varchar (50));
insert into customer 
values (1,'Mary','Smith','Sasebo','Japan'),
(2,'Patricia','Johnson','Sasebo','Japan'),
(3,'Linda','Williams','Athenai','Greece'),
(4,'Barbara','Jones','Athenai','Greece'),
(5,'Elizabeth','Brown','Nantou','Taiwan');
select * from customer;
--select concat (first_name,last_name) as first_customer,
--concat (first_name,last_name) as second_customer, city, country
--from customer
--order by country, city, first_name, last_name;

-------------------------------------------lab 7, câu 70----------------------------------
SELECT
concat(a.first_name,' ',a.last_name) as first_customer,
concat(b.first_name,' ',b.last_name) as second_customer,
a.city, a.country
FROM
customer a
inner join customer b on b.city = a.city
and b.country = a.country
and a.customer_id != b.customer_id
order by a.country, a.city, a.first_name, a.last_name;
-------------------------------------lab 7, câu 74---------------------------------------
drop table city;
create table city(
city_id int primary key,
city varchar(50));
insert into city
values (1,'Acorua (La corua)'),
(200,'Hamilton'),
(300,'Lethbridge'),
(400,'Patiala'),
(576,'Wodridge');
select * from city;
------------------------------

drop table address;
create table address(
address_id int primary key,
address varchar(50),
district varchar(50),
city_id int,
postal_code int,
phone int,
foreign key (city_id) references city(city_id) on update cascade on delete cascade);
insert into address
values(3,'23 Workhaven Lane','Alberta',300,35200,140220192),
(4,'1411 Lilydale Drive','QLD',576,17886,617872887),
(5,'1913 Hanoi Way','Nagasaki',400,35200,283990192),
(6,'1121 Loja Avenue','Califonia',400,17886,838635009),
(7,'692 Joliet Street','Attika',300,83579,448477390);
select * from address;
----------------------------------

drop table staff;
create table staff(
staff_id int primary key,
first_name varchar(50),
last_name varchar (50),
address_id int,
store_id int,
active int,
foreign key (address_id) references address(address_ID) on update cascade on delete cascade);
insert into staff
values (1,'Mike','Hillyer',3,1,1),
(2,'Jon','Stephens',4,2,1);
select * from staff;
-----------------------------------------
SELECT 
concat(staff.first_name,' ',staff.last_name) AS full_name, 
concat(address.postal_code,', ',address.address,', ',address.district,', ',city.city) AS address
FROM
staff
JOIN address ON address.address_id=staff.address_id
JOIN city ON city.city_id=address.city_id
ORDER BY staff.staff_id;



