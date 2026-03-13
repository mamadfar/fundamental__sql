use mydb;

drop table if exists enrols;
create table enrols(
	enrol_id int auto_increment,
    student_id int not null,
    course_id int not null,
    grade DECIMAL(4,2) CHECK(grade >= 0 AND grade <= 20),
    
    primary key(enrol_id),
    CONSTRAINT unq_key UNIQUE KEY(student_id, course_id)
    -- Or UNIQUE(student_id, course_id)
    -- Or UNIQUE unq_key (student_id, course_id)
);

insert into enrols(enrol_id, student_id, course_id, grade) values(1, 2, 2, 2);

insert into enrols(enrol_id, student_id, course_id, grade) values(1, 3, 3, 3); -- Error --- Same ID

insert into enrols(enrol_id, student_id, course_id, grade) values(2, 2, 3, 4);

insert into enrols(enrol_id, student_id, course_id, grade) values(3, 2, 3, 5); -- Error --- 2-3 are used before, can't use this combination

/*
	We can not use the same combination for a UNIQUE field
*/

/*
	We can use a combination of multiple columns for PRIMARY KEY
    But, it's better not to do
*/

/*
	- We can apply multiple CONTRAINT UNIQUE on a table
    - But we can only have one PRIMARY KEY
*/