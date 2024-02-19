
--Display what each books price would be if a 20% price increase were to take place. 
--Show the title id , old price and new price using meaningful headings

select title_id, price as oldprice,1.2*price as newprice from titles

--Display the name of books whose price are greater than $20  and less than $55.

select title,price from titles where price > 20 and price < 55

--Display the numeric part of every title id 
--(the numeric part of the title eg BU1032 , 1032)

select title_id, right(title_id,4), substring(title_id, 3,4)from titles

--You want to retrieve data for all the employees who joined after  
--'1-12-90' have 26– 28 years of experience.

select *, datediff(yy,hire_date,getdate())  from employee 
where hire_date>'19901201' and datediff(yy,hire_date,getdate()) between 26 and 28

select count(*) from titles
where price>12

select * from titles

select max(price), min(price),avg(price) as avg,sum(price) as Sum,count(*) as No,
sum(price)/count(*) as calculatedAvg
 from titles

 select count(*), count(price) from titles

 SELECT AVG(Price), MAX(Price), MIN(Price), SUM(Price)
FROM   Titles
WHERE  Type In('Mod_Cook', 'Business')

SELECT MIN(pubdate), MAX(pubdate)
FROM Titles

SELECT COUNT(advance),count(*)
FROM   Titles
WHERE  type='Business'

select title,type,price from titles
where price<10

select type, count(*) as NoOfBooks,sum(price)
from titles 
where price<10
group by type

select * from titles
select * from publishers where Pub_id=1389

select distinct pub_id from publishers
where pub_id not in (select distinct pub_id from titles)
--
SELECT pub_id ,SUM(price) as Total
FROM titles 
GROUP BY pub_id 

SELECT pub_id, type, avg(price) Total_price 
FROM titles 
GROUP BY pub_id, type
order by pub_id

SELECT type, AVG(price) 
FROM titles 
WHERE advance > $5000 
GROUP BY all type 

SELECT type, AVG(price) 
FROM titles 
WHERE advance > $5000 
GROUP BY type 
having avg(price)>15

SELECT royalty, AVG(price) AS AveragePrice 
FROM pubs.dbo.titles 
WHERE royalty IS NOT NULL 
GROUP BY  royalty 

select title,coalesce(price,0) from titles

