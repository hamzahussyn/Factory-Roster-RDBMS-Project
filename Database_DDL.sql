create table employee (
employee_id int not null primary key identity(1,1),
employee_rank int not null,
)

create table floors(
floor_id int not null primary key
)

create table stations(
station_id int primary key identity(1,1),
floor_id int foreign key references floors(floor_id)
)

create table shifts(
shift_id int primary key,
start_time time,
end_time time,
)

create table roster(
roster_id int primary key,
start date,
end_ date
)

create table employee_assigned(
employee_id int,
roster_id int,
floor_id int,
station_id int,
shift_id int
)

create table attendance(
employee_id int,
roster_id int,
sign_in time,
sign_out time
)

