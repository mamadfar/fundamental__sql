use mydb;

drop table if exists strings1;
create table strings1(
	varchar_field VARCHAR(10), -- Maximum length varies based on CHARSET
    char_field CHAR(10)
);

insert into strings1 values(repeat('a', 10), repeat('b', 10));

insert into strings1 values('a   ', 'b   ');

insert into strings1 values('a          ', 'b          '); -- Warning --- more than 10 chars (VARCHAR) with spaces

insert into strings1 values('a          a', 'b          b'); -- Error --- more than 10 chars (CHAR)

/*
	In case of using UNIQUE, the strings will be checked after removing the spaces from the end of the string
*/
