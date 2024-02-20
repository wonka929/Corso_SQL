select dbo.udf_getworkingdays('20180101','20181231')


alter function udf_getworkingdays(@start date,@end date)
returns int
as
begin
--declare @start date ='20180101'
--declare @end date ='20181231'
declare @leave int=0
declare @total int
declare @workingdays int
if(@start<=@end)
begin
	select @total= datediff(day,@start,@end)+1

	while(@start<=@end)
	begin
		if datename(dw,@start)='Saturday' or datename(dw,@start)='Sunday'
			begin
				select @leave=@leave+1
			end
		select @start=dateadd(day,1,@start)
	end
	select @workingdays=@total-@leave
end

return @workingdays
end


create function udf_yearlysal(@hourlysal int)
returns numeric(8,2)
as
begin
	declare @yearlysal numeric(8,2)
	select @yearlysal=@hourlysal*8*dbo.udf_getworkingdays('20180101','20181231')

	return @yearlysal
end

select  dbo.udf_yearlysal(50)