/*
Write a batch that will check for the existence of the title “the gourmet microwave” 
if it exists, print the cost of the book else display “not found”.
*/
declare @var1 char(30)='the gourmet microwave'
if exists(select * from titles where title=@var1)
begin
	select price from titles where title=@var1
end
else
	select 'not found'


/*
Write a batch to display the titles of all the psychology books if the average 
price of psychology books is less than $15. Display the appropriate output.

*/
declare @avgprice numeric(6,2)
select @avgprice=avg(price) from titles where type='psychology'
select @avgprice
if(@avgprice)<15
begin
	select title from titles where type='psychology'
end


alter procedure usp_pubtitle @title varchar(50)
as
begin
	select t.title, p.pub_name
	from titles t join
	publishers p on t.pub_id=p.pub_id
	--where t.title=@title
end

execute usp_pubtitle 'Is Anger the Enemy?'

sp_helptext usp_pubtitle

/*
Write a procedure which accepts the city name as a parameter and 
displays the names of publishers residing in the city
*/

alter proc usp_pubs @city varchar(20), @count int out
as
begin

	select pub_name
	from publishers where city=@city

	select @count=count(*)
	from publishers where city=@city
end

declare @noofpubs int
exec usp_pubs 'Boston', @count=@noofpubs output
select @noofpubs

grant execute on usp_pubtitle to demouser1
