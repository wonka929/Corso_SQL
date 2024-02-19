declare @i int
declare @num int
set @i=1
select @num=10

while @i<=10
begin
	print @i*@num
	select  @i=@i+1
end

declare @j numeric(10,0)
select @j=19.345
select @j

declare @a int=4
select cast(@a as numeric(4,1))
