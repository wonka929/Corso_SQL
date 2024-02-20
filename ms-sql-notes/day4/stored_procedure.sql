
exec usp_workingdays @end='20181231',@start='20180101'


create proc usp_workingdays @start date, @end date
as 
begin
--declare @start date ='20200101'
--declare @end date ='20181231'
declare @leave int=0
declare @total int
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
	select @total-@leave
end
else
begin
	raiserror( 'Start date should be less than or equal to end date',16,1)
end

end