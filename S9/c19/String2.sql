use mydb;

drop table if exists strings2;
create table strings2(
	tinytext_field TINYTEXT,
    text_field TEXT(1000),
    mediumtext_field MEDIUMTEXT, -- Or LONG VARCHAR / LONG
    longtext_field LONGTEXT
);

insert into strings2 values('a' , 'b', 'c', 'd');

insert into strings2 values('a' , REPEAT('b', 65535), 'c', 'd');

insert into strings2 values('a' , REPEAT('س', 32767), 'c', 'd');

insert into strings2 values('a' , REPEAT('😂', 16383), 'c', 'd');

insert into strings2 values('a' , 'b', REPEAT('c', 16000000), 'd');

insert into strings2 values('a' , 'b', 'c', REPEAT('d', 100000000));

set global max_allowed_packet = 1024 * 1024 * 1024;

restart;

/*
	In these type of string data types,
    only the first 1024 character will be compared
    By changing the max_sort_length we can increase
    the length but it will cost the performance
*/

show variables like 'max_sort_length';