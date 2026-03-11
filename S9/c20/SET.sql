use mydb;

drop table if exists classes_set;
create table classes_set(
	id int primary key auto_increment,
    class_name ENUM('ریاضی', 'فیزیک', 'برنامه نویسی', 'پایگاه داده', 'مدارهای منطقی') not null,
    class_days SET('شنبه', 'یکشنبه', 'دوشنبه', 'سه شنبه', 'چهارشنبه', 'پنج شنبه', 'جمعه') default 'شنبه'
);

insert into classes_set(class_name, class_days) value('ریاضی', 'جمعه');

insert into classes_set(class_name, class_days) value('فیزیک', 'شنبه,دوشنبه');

/*
	- The order doesn't matter
    - Duplicate values will be deleted
*/

insert into classes_set(class_name, class_days) value('فیزیک', 'شنبه,دوشنبه,دوشنبه');

insert into classes_set(class_name, class_days) value('فیزیک', 'شنبه , دوشنبه'); -- Error
-- There should not be any spaces between the values

insert into classes_set(class_name, class_days) value('فیزیک', '');

insert into classes_set(class_name) value('فیزیک');

insert into classes_set(class_name, class_days) value('فیزیک', 22);

/*
	Data is in 64bit format, so each bit represent of existance or not existance of an element
    22 means 0001 0110
*/

select class_name, class_days + 1 from classes_set;

insert into classes_set(class_name, class_days) value(1,2),(3,9),(3,11),(4,21),(1,29),
(2,55),(2,11),(5,77),(1,127),(4,24),(4,44),(2,6),(1,4),(3,64),(1,32);

/*
	In this example the maximum number is 2^7 - 1 (7 is the number of elements in the SET)
*/

select * from classes_set order by class_days;

select * from classes_set order by CAST(class_days AS CHAR); -- Or order by concat(class_days)

select * from classes_set where FIND_IN_SET('دوشنبه', class_days);

select * from classes_set where class_days = 'یکشنبه,دوشنبه';