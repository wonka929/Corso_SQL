select * from TSQL2012.hr.Employees

create synonym Emp for TSQL2012.hr.employees

select * from Emp

create view  vw_pubtitle
as
select st.stor_name,t.title,  p.pub_name, sum(s.qty) as Quantity
from publishers p 
inner join titles t
on p.pub_id=t.pub_id
join sales s
on s.title_id=t.title_id
join stores st
on st.stor_id=s.stor_id --378
group by st.stor_name, t.title, p.pub_name

select stor_name,title, pub_name, Quantity 
from vw_pubtitle

sp_helptext vw_pubtitle

grant select on vw_pubtitle to demouser1

grant select on stores to demouser1

sp_helptext vw_pubtitle

select text  from syscomments where id=object_id('vw_pubtitle')

select * from sysobjects


select * from sales