use mydb;

drop table if exists timezones;
create table timezones(
	datetime_field DATETIME,
    timestamp_field TIMESTAMP
);

insert into timezones(datetime_field, timestamp_field) values('2000-01-01 00:00:00', '2000-01-01 00:00:00');

insert into timezones(datetime_field, timestamp_field) values('2000-01-01 00:00:00+06:00', '2000-01-01 00:00:00+06:00');

select @@time_zone;

set time_zone = '+02:00';

restart; -- For restoring the settings