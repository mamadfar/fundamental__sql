use mydb;

drop table if exists enrols;
create table enrols(
	enrol_id int primary key auto_increment,
    student_id int not null,
    course_id int not null,
    grade DECIMAL(4,2) CHECK(grade >= 0 AND grade <= 20)
    -- Or grade DECIMAL(4,2) CONSTRAINT const_name CHECK(grade >= 0 AND grade <= 20)
);

/*
	We have 2 types of constraint:
    1. Column level: Not Null / Primary Key / Unique / Check()
    2. Table level: Foreign Key / Primary Key / Unique / Check()
*/

insert into enrols(student_id, course_id, grade) 
values(1, 1, 15), (1, 4, 15.4), (2, 2, 20), (2, 4, 11), (1, 2, 12.22),
	  (4, 1, 11.5), (3, 1, 12.5), (4, 2, 14), (3, 4, 19), (2, 3, 15.4);
      
update enrols set grade = 13 where enrol_id = 11;

drop table if exists enrols;
create table enrols(
	enrol_id int primary key auto_increment,
    student_id int not null,
    course_id int not null,
    grade DECIMAL(4,2),
    
    CONSTRAINT check1 CHECK(grade >= 0 AND grade <= 20)
);

insert into enrols(student_id, course_id, grade) 
values(1, 1, 15), (1, 4, 15.4), (2, 2, 20), (2, 4, 11), (1, 2, 12.22),
	  (4, 1, 11.5), (3, 1, 12.5), (4, 2, 14), (3, 4, 19), (2, 3, 15.4);
      
insert into enrols(student_id, course_id, grade) values(6, 5, 11);
-- Error with CONSTRAINT check1 CHECK(grade >= 0 AND grade <= 20 AND student_id < course_id)