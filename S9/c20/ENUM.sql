use mydb;

drop table if exists classes;
create table classes(
	id int primary key auto_increment,
    class_name ENUM('ریاضی', 'فیزیک', 'برنامه نویسی', 'پایگاه داده', 'مدارهای منطقی') not null,
    class_day ENUM('شنبه', 'یکشنبه', 'دوشنبه', 'سه شنبه', 'چهارشنبه', 'پنج شنبه', 'جمعه') default 'شنبه'
);

insert into classes(class_name, class_day) value('ریاضی', 'جمعه');

insert into classes(class_name, class_day) value('ترمودینامیک', 'سه شنبه'); -- Error

insert into classes(class_name, class_day) value(1, 2);

insert into classes(class_name) value('پایگاه داده');

insert into classes(class_day) value('سه شنبه');

/*
	If we don't pass an Enum field which is a NOT NULL field and doesn't have any DEFAULT value,
    the first item in the Enum will be assiged, otherwise (if if it isn't NOT NULL and doesn't have DEFAULT value),
    the NULL value will be assigned
*/

insert into classes(class_name, class_day) value('فیزیک', null);

insert into classes(class_name, class_day) value(1, 2),(2,4),(4,1),(4,4),(3,6),(4,3),(3,2);

select * from classes order by class_name;

select * from classes order by CAST(class_name AS CHAR); -- Or order by concat(class_name)