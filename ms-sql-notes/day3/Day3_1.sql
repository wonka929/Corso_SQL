
create table employees
(
emp_id int primary key identity(100,1),
fname varchar(50) not null,
lname varchar(50) not null,
dob date 
)

create table salary
(
monthyear char(10),
empid int references employees(emp_id),
salary money
)

insert into salary values('022018',101,10000)

select * from salary

alter table salary
alter column monthyear char(10) not null


alter table salary
alter column empid int not null

alter table salary
add constraint pk_salary primary key(monthyear,empid)

insert into employees values('Ankit','Kr',null)
insert into employees values('Ankita','L',null)
select * from employees

delete from employees

truncate table employees


create table items
( 
itemid int primary key identity(1000,1),
name char(10),
price money,
taxrate numeric(4,2),
mrp as price+taxrate*price/100
)

insert into items (name,price,taxrate,mrp) values('shoes',1000,5,100)

select * from items

select 100.00123+5.00*100.00123/100


create table #temp1
(id int,
name char(50)
)

select * from #temp1

insert into #temp1
select itemid,name from items


drop table #temp1

update items
set price=100
where itemid=1000



select *
into emp1 from employees

select * from emp1



select * from items

create table category 
(cat_id int identity(2000,1) primary key,
cat_name char(10)
)

insert into category values('Clothes'),('Grocery'),('shoeslippr')
select * from category
alter table items
add cat int


update items 
set cat=2005
where name='shoes'

delete from category where cat_id=2005

select * from category
select * from items

alter table items
add constraint fk_itemscat foreign key(cat) references category(cat_id)
on delete cascade


insert into items(name,price,taxrate,cat) values('Potato',20,5,2004)
insert into items(name,price,taxrate,cat) values('Tomato',30,5,2004)



create table demo1
(id int,
name char(10)
)

insert into demo1 values(100,'ABC'),(87,'ASC'),(84,'BED'),(99,'WER')

select * from demo1
where id=99

alter table demo1
alter column id int not null

alter table demo1
add constraint pk_demo primary key(id)

--Create your own employee table called My_Emp  by copying the data from 
--existing table Employee in Pubs database
select * 
into My_Emp from employee

sp_help employee

--Apply all database constraints in the My_Emp table.


exec sp_addtype fname, 'varchar(100)', 'not null'

create table demoemp
(id int,
firstname fname
)

alter table demoemp
alter column firstname varchar(100) not null

exec sp_droptype fname

create table Tb_mybcp
( id int,
name char(10)
)

select * from Tb_mybcp
insert into tb_mybcp values(40,'Ankita'),(50,'Vinay')
select @@ROWCOUNT

Bulk insert Tb_mybcp 
From 'c:\softwares\demo123.Txt'
With
(DATAFILETYPE = 'char', 
FIELDTERMINATOR = ',', ROWTERMINATOR = ';')


select @@servername





select * from titles 
where pub_id= (select pub_id from publishers 
				where pub_name='New Moon Books')


update titles
set price=price*2
where pub_id=(select pub_id from publishers 
				where pub_name='New Moon Books')

select * from My_Emp

alter table My_Emp
add status char(1)

update My_Emp
set status='A'

update My_emp
set status='I'
where job_id<5

select * from titles --18
select * from publishers --8
sp_help titles

select t.title, p.pub_name
from titles as t
join publishers  as p
on t.pub_id=p.pub_id --18

select * from jobs
--sp_help employee
select * from employee


select e.fname+e.lname as Name, j.job_desc, j.job_id
from employee as e
join
jobs as j
on e.job_id=j.job_id

select * from titles 
where title_id not in (select title_id from titleauthor)

select * from titles --18
select * from titleauthor --25
select count(*) from authors --23

select  t.title, a.au_fname+a.au_lname as AuthorName, ta.au_ord
from titles as t
join titleauthor as ta
on t.title_id=ta.title_id
join authors as a
on a.au_id=ta.au_id  --25
order by t.title_id

create table class
(
class_id int primary key,
name char(10)
)
insert into class values(1,'One'),(2,'Two'),(3,'Three'),(4,'Four'),(5,'Five')

create table students
(std_id int primary key identity(100,1),
 name char(10),
 classid int
 )


 insert into students values ('Ankit',1),('Ankita',5),('vinay',7),('Vijay',8)

 select * from class
 select * from students

 select c.name, s.name
 from class c full outer join  students s 
 on c.class_id=s.classid


 select c.name,s.name
 from class c cross join students s

 create table emp
 ( emp_id int,
 name char(10),
 mgr_id int
 )
 alter table emp
 add designation char(10)

 insert into emp values(100,'Vijay',null,'CEO'),(101,'Vinay',100,'Manager'),
 (102,'Ankit',100,'Manager'),(103,'Ankita',102,'Executive')

 select * from emp

 select e.name as EmployeeName, m.name as ManagerName
 from emp as e left outer join
 emp as m 
 on e.mgr_id=m.emp_id
 
 insert into employees(fname,lname) values('Ankit','')

 select emp_id,name from emp
 except
 select emp_id, fname+lname as name from employees

 select cast(80 as numeric(4,2))

 select convert(numeric(4,2),80)

 --Display the current system date in European and Japanese .

select convert(char(20),getdate(),113)

--Display the last three characters of all the employee name


select right(lname,3) from employee

select lname,substring(lname,len(lname)-2,3) from employee


 


 select * from titles 
 where pub_id=(
	select pub_id from publishers where pub_name='New Moon Books')

select t.*
from titles t join
publishers p on t.pub_id=p.pub_id
where p.pub_name='New Moon Books'

--Find the titles that obtain an advance larger than the 
--average  price for books of similar type.

select t1.title,t1.type, t1.advance from titles t1
 where t1.advance> (select avg(t2.price)
			from titles t2
			where t1.type=t2.type
			group by t2.type)

select type,avg(price)
			from titles 
			group by type

--19.99
--11.95
--5.98
--19.99
select * from titles 
where price > Any (select price from titles where type='business')


select * from titles 
where price > All (select price from titles where type='business')


if not exists(select * from titles where title_id='1343')
	begin
		select * from titles
	end