use mydb;

drop table if exists timestamps;
create table timestamps(
	id int primary key auto_increment,
    timestamp1 TIMESTAMP,
    timestamp2 TIMESTAMP(3) DEFAULT '2026-03-12 13:11:33.443',
    timestamp3 TIMESTAMP DEFAULT CURRENT_TIMESTAMP,
    timestamp4 TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
    other_field INT DEFAULT 0
);

insert into timestamps() values();

update timestamps set other_field = 4 where id = 1;

insert into timestamps(timestamp1) values('1942-11-12 20:11:44'); -- Error
/*
	The Date and Time for TIMESTAMP should be between
    1970-01-01 00:00:01.000000
    and
    2038-01-19 03:14:07.000000
*/

insert into timestamps(timestamp1) values('1970-01-01 00:00:01'); -- Error

/*
	In TIMESTAMP, the time will always calculate in UTC (Coordinated Universal Time)
*/

insert into timestamps(timestamp1) values('1970-01-01 00:00:01+00:00');

/*
	Since I'm living in Europe, it will show 1970-01-01 01:00:01 in the DB
    that is based on UTC
*/