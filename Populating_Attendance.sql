declare @count int = 1
declare @count2 int = 1
declare @start1 int = 21600
declare @end1 int = 43200
declare @start2 int = 43200
declare @end2 int = 64800
declare @shift int = 1
declare @shift2 int = 2
declare @assignmentid int = 201
declare @rand1 int 
declare @rand2 int 
declare @rand3 int
declare @rand4 int
declare @a time
declare @b time
declare @c time
declare @d time
declare @counter int = 0


while @counter < 100
begin


while @count <= 800
begin
--SELECT FLOOR(RAND()*(10-5+1)+5) randomizer
set @rand1 = floor(rand()*(25200 - @start1 + 1) + @start1)
set @rand2 = floor(rand()*(@end1 - 39600 + 1) + 39600)

set @a = convert(time, dateadd(s, @rand1, 0))
set @b = convert(time, dateadd(s, @rand2, 0))

insert into attendance(employee_id, assignment_id, sign_in, sign_out, shift_id) 
values(@count, @assignmentid, @a, @b, @shift)

set @count = @count + 1
end

set @count = 1

while @count2 <= 800
begin
--SELECT FLOOR(RAND()*(10-5+1)+5) randomizer
set @rand3 = floor(rand()*(46800 - @start2 + 1) + @start2)
set @rand4 = floor(rand()*(@end2 - 61200 + 1) + 61200 )

set @c = convert(time, dateadd(s, @rand3, 0))
set @d = convert(time, dateadd(s, @rand4, 0))

insert into attendance(employee_id, assignment_id, sign_in, sign_out, shift_id)
values(@count2, @assignmentid, @c, @d, @shift2)

set @count2 = @count2 + 1 
end

set @count2 = 1

set @assignmentid = @assignmentid + 1
set @counter = @counter + 1
end
 
