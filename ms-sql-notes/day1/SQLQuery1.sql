select * from titles


create database bankbazaar

use bankbazaar

create table trainees
(
id int,
fname char(10),
lname char(10),
dob date
)

insert into trainees (id,fname,lname,dob) values(100, 'Sindiya','K.','20100101')
insert into trainees values(101,'Devi','S.','20100101')
insert into trainees(id,fname,lname) values(102,'Rajeswari','J.K.')


select * 
from trainees 
where  dob is NULL



delete from trainees where id=100

alter table trainees
alter column id int not null


alter table trainees
add constraint pk_trainees primary key(id)



alter table trainees
add credit_card char(16) 

update trainees
set credit_card='1002300120001001'
where id=102


create view vw_trainees
as
select id, fname,lname,dob from trainees

select * from vw_trainees

update vw_trainees
set lname='K'
where id=101

alter table trainees
add status char(1) default 'Y'


select * from trainees
where status='Y'


select * from vw_trainees

insert into vw_trainees values(104,'Ankita','S.','20110210')

insert into vw_trainees values(105,'Abc','K','20100101'),(106,'ADC','S.','20100709')

insert into vw_trainees(id,fname,lname) values(107,'Ankur','K')

insert into vw_trainees values(108,'Raj','Kamal',null)

insert into vw_trainees(id,lname,fname,dob) values(109,'R','Rishi','20100809')


update trainees
set status='Y'

insert into trainees(id,fname,lname,dob) values(103,'Ankit','Kr','20100210')

update trainees
set status='N'
where id=102

alter table trainees
add gender char(1) default('M')



select * from trainees
update trainees set gender='M'

update trainees set gender='F'
where id in (100,101,102,104)


alter table trainees
add constraint chk_gender check(gender in ('M','F'))

update trainees
set gender='T'
where id=105


alter table trainees
add pan_card char(8)

alter table trainees
add constraint unq_pan unique(pan_card)

select getdate()

select sysdatetime()

select 1+1

select 'Dr '+'Anirban'+null

select dateadd(yy,2,getdate())

select datediff(dd,'20181201','20181231')

alter table trainees
add constraint pk_trainee primary key(id,dob)

create table class
(
id int,
name char(10)
)

insert into class values(1,'One'),(2,'Two'),(3,'Three'),(4,'four'),(5,'Five')

select * from class 

create table students
(
std_id int primary key,
name char(10),
dob date,
class_id int
)


insert into students values(100,'Vipin','20180101',1)

insert into students values(101,'Vijay','20180201',5)

insert into students values(102,'Vijaya','20180201',6)

insert into students values(103,'Ipsita','20180101',4)

update students
set class_id=5
where std_id=102

select * from class
select * from students


alter table class
alter column id int not null

alter table class
add constraint pk_class primary key(id)

alter table students
add constraint fk_students_classid foreign key(class_id) references class(id)
