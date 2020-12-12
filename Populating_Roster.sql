--inserting roster
declare @count int = 1
declare @dummy date = '2019-01-01'
declare @dummy2 date

while @count <= 364
begin
insert into roster(roster_id, start, end_) values(@count, dateadd(day,@count,@dummy), dateadd(day,@count,@dummy));
set @count = @count + 1;
end




