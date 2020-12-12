declare @count int = 1
declare @count2 int = 1
declare @countB int = 1
declare @upper int = 5
declare @lower int = 1
declare @rem int
declare @station int = 31
declare @floor int = 1


while @countB < 365

begin

while @count < 151
begin
set @rem = floor(rand()*(@upper-@lower+1)+@lower);
set @lower = @upper;
set @upper = @upper + 5;

insert into employee_assigned(employee_id, roster_id, floor_id, station_id, shift_id) 
values(@rem, @countB, @floor, @station, 1);

set @count = @count + 1;

if @count % 5 = 0 set @station = @station + 1;

if @count = 50 set @floor = 2;

if @count = 100 set @floor = 3;
end

set @count = 1;


set @lower = 1;
set @upper = 5;
set @station = 31;
set @floor = 1;






while @count2 < 151
begin
set @rem = floor(rand()*(@upper-@lower+1)+@lower);
set @lower = @upper;
set @upper = @upper + 5;

insert into employee_assigned(employee_id, roster_id, floor_id, station_id, shift_id) 
values(@rem, @countB, @floor, @station, 2);

set @count2 = @count2 + 1;

if @count2 % 5 = 0 set @station = @station + 1;

if @count2 = 50 set @floor = 2;

if @count2 = 100 set @floor = 3;
end

set @count2 = 1;


set @lower = 1;
set @upper = 5;
set @station = 31;
set @floor = 1;

set @countB = @countB + 1;


end


  

 