use university;

drop table if exists enrols;
create table enrols(
	enrol_id int auto_increment,
    student_id int,
    course_id int,
    grade decimal(4, 2) check(grade >= 0 and grade <= 20),
    
    primary key(enrol_id),
    constraint unq_key unique(student_id, course_id),
    
    constraint enrols_students_fk foreign key(student_id) references students(student_id)
								ON DELETE CASCADE ON UPDATE CASCADE,
    constraint enrols_courses_fk foreign key(course_id) references courses(course_id)
								ON UPDATE CASCADE ON DELETE SET NULL
                                
	-- Available Actions: CASCADE / RESTRICT (default) / SET NULL / NO ACTION (default)
);

insert into enrols(student_id, course_id, grade)
values(1,1,15), (1, 4, 15.4), (2, 2, 20), (2, 4, 11), (1, 2, 20),
	  (4, 1, 11.5), (3, 1, 12.5), (4, 2, 14), (3, 4, 19), (2, 3, 15.4);
      
delete from students where student_id = 1;

update students set student_id = 15 where student_id = 2;

delete from courses where course_id = 2;