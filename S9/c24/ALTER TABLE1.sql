use university2;

alter table courses add column teacher varchar(40);

alter table courses add column teacher2 varchar(40) first;

alter table courses add column teacher3 varchar(40) after course_id;

alter table courses add column teacher4 varchar(40) not null default 'a' after teacher3;

alter table courses rename column course_name to course_title;

alter table courses change column course_title course_name varchar(80);

alter table courses change column course_id course_id bigint;

alter table courses change column course_id course_id smallint;

alter table courses change column course_id course_id varchar(20);

/*
	The new data type should compatible with the data
*/

alter table courses change column course_id course_id timestamp; -- Error: We can't convert number to timestamp

alter table courses change column course_name course_name varchar(10); -- Error: We can't change to a smaller data type

alter table courses change column course_id course_id int after course_name;

alter table courses rename to course;

rename table course to courses;

alter table courses default charset latin1 engine MyISAM;

alter table courses
			add column teacher1 varchar(40),
            rename column course_name to course_title,
            add column teacher2 varchar(40) after course_id;
            
/*
	We can do multiple changes in one query
*/

rename table university.courses to mydb.courses2;

/*
	By using
    RENAME TABLE
    or
    ALTER TABLE ... RENAME
    we can move tables from a DB to another
*/

alter table students drop column student_id;