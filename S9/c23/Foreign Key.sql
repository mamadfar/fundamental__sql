use university;

drop table if exists enrols;
create table enrols(
	enrol_id int auto_increment,
    student_id int,
    course_id int,
    grade decimal(4, 2) check(grade >= 0 and grade <= 20),
    
    primary key(enrol_id),
    constraint unq_key unique(student_id, course_id),
    
    constraint enrols_students_fk foreign key(student_id) references students(student_id),
    constraint enrols_courses_fk foreign key(course_id) references courses(course_id)
    
    -- Or
    -- foreign key(student_id) references students(student_id)
    -- foreign key(course_id) references courses(course_id)
);

insert into enrols(student_id, course_id, grade) values(1,3,14);
insert into enrols(student_id, course_id, grade) values(1,5,11); -- Error --- We don't have course_id = 5

insert into enrols(student_id, course_id, grade)
values(1,1,15), (1, 4, 15.4), (2, 2, 20), (2, 4, 11), (1, 2, 20),
	  (4, 1, 11.5), (3, 1, 12.5), (4, 2, 14), (3, 4, 19), (2, 3, 15.4);
      
/*
	We specify the Foreign Key inside Child table
    and we call the referenced table, Parent table
*/

/*
	We can only use Foreign Key in tables with InnoDB engine
*/

/*
	- Both columns in Child and Parent tables should be the same type
    - The Parent column should have index
*/

delete from students where student_id = 1; -- Error --- We can't remove a value that used as a FK

update courses set course_id = 10 where course_id = 4; -- Error --- We can't update a value that is used as a FK

drop table students; -- Error --- We can't drop a referenced table

truncate table students; -- Error --- We can't truncate a referenced table

/*
	By updating foreign_key_checks
    we can temporary disable the FK limitation
*/

set foreign_key_checks = 0;

restart;