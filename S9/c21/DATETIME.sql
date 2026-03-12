use mydb;

drop table if exists datetimes;
create table datetimes(
	id int primary key auto_increment,
    datetime1 DATETIME,
    datetime2 DATETIME(3) DEFAULT '2026-03-12 13:11:33.443',
    datetime3 DATETIME DEFAULT CURRENT_TIMESTAMP,
    datetime4 DATETIME ON UPDATE CURRENT_TIMESTAMP,
    other_field INT DEFAULT 0
);

insert into datetimes() values();

/* 
	If we use DATETIME DEFAULT CURRENT_TIMESTAMP,
    It will store the current record creation time
*/

update datetimes set other_field = 5 where id = 1;

/*
	By using ON UPDATE CURRENT_TIMESTAMP to a field of DATETIME
    after each update on other fields, the date and time for the 
    update will be stored
*/

/*
	We usually call datetime3 as created_at
    and datetime4 as updated_at
*/

/*
	We can use both DEFAULT CURRENT_TIMESTAMP and ON UPDATE CURRENT_TIMESTAMP
    for the same field
*/

update datetimes set datetime4 = '2000-01-01 22:11:33' where id = 1;

/*
	If we update a field with ON UPDATE CURRENT_TIMESTAMP,
    it will only accept the value and won't update based on the changes
*/

insert into datetimes(datetime1, datetime2) values('1222-11-12 20:11:44', '2023-10-22T22:11:34.3412');

/*
	We can separate date and time with T
*/

insert into datetimes(datetime1, datetime2) values('2000-10-11', '16-11-27');

/*
	If we don't specify the time, it will consider as 00:00:00
*/

insert into datetimes(datetime1) values('10:20:30'); -- Error --- Missing time

insert into datetimes(datetime1, datetime2) values('2000-10-11 44-22-22'); -- Error

/*
	In DATETIME we can specify the time between
    00:00:00
    and
    23:59:59
    But in TIME, we can use numbers begger than 23
*/