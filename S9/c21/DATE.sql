use mydb;

drop table if exists dates;
create table dates(
	id int primary key auto_increment,
    date_field DATE
);

insert into dates(date_field) value('2000-10-10');

insert into dates(date_field) value('00-10-10'), ('11-10-10'), ('88-10-10');

/*
	If we wanna use YY format and the year is less than 70,
    It will convert to 20xx
    Otherwise 19xx
*/

insert into dates(date_field) value('1900-1-1'), ('2222-2-09'); -- The signle digit can be used for Month and Day

insert into dates(date_field) value('0000-01-01'), ('00-1-1'), ('9999-12-31');

/*
	0000-01-01 smallest valid date
    9999-12-31 biggest valid date
*/

insert into dates(date_field) value('2001-10-14 22:10:53'); -- The Time will be removed

insert into dates(date_field) value('0001-10-10'), ('332-2-2'), ('023-11-12'), ('11-11-11');

/*
	For date less than 1000, we should use YYYY or YYY
*/

insert into dates(date_field) value('2002-04-31'); -- Error: Invalid date can not be stored