--inserting employees
declare @count int = 0
declare @rank int = 500

while @count < 300

begin
insert into employee(employee_rank) values(@rank);
set @count = @count + 1;
end;

go