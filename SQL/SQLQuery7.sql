use QuanLyNhanSu;
select distinct DanToc from NHANVIEN;
select top(4) PhuCap from BANGLUONG
order by PhuCap desc;
---=========================================================
Drop table if exists Nickname;
create table Nickname(
id varchar (50),
nickname varchar(50));
insert into Nickname
values('1','alex2020'),
('123','qwuerty1'),
('id021','trungduyen0220'),
('id1','alex1990x');
--===================================answer 1==================
update Nickname
----set id='rename-'|id,nickname='rename-'|Nickname
set id ='rename-'+id,Nickname = 'rename-'+Nickname
where len(Nickname) !=8;
select * from Nickname;
---==========================================================
drop table if exists affiliations;
create table affiliations (
first_name varchar(50),
last_name varchar(50),
function1 text,
organization_id text,
professor_id smallint);
insert into affiliations
values('Anastasia','Ailamaki','Consulting on date mgmt','S2P lion Germany',''),
('Celsa','Amarelle','Mandat','Nationalrat',''),
('Christoph','Aebi','NA','SWAN Isotopen AG',''),
('Daniel','Aebersold','NA','Berner      radium- Stiftung',''),
('Daniel','Aebersold','NA','Janser      Krebs- Stiftung','');
select * from affiliations;
-------------------------------------------------------------
drop table if exists professors;
create table professors(
id int,
first_name varchar(50),
last_name varchar(50),
university_shortname char(10));
insert into professors
values(5,'Daniel','Aebersold','UBE'),
(7,'Christoph','Aebi','UBE'),
(10,'Anastasia','Ailamaki','EPF'),
(11,'Celsa','Amarelle','UNE');
select * from professors;
----=========================================answer 2=============================
update affiliations set professor_id= professors.id from professors
where affiliations.first_name = professors.first_name
and affiliations.last_name = professors.last_name;

