use university2;

select * from enrols cross join courses;

select * from courses cross join enrols;

select * from courses cross join enrols order by course_name;

select * from courses cross join enrols order by course_id; -- Error: because we have 2 course_id columns

select * from courses cross join enrols order by courses.course_id;

select * from courses cross join enrols order by enrols.course_id;

select * from courses, enrols; -- We can use (,) instead of CROSS JOIN

select * from courses, enrols
			where courses.course_id = enrols.course_id order by courses.course_id;
            
select courses.*, enrols.student_id, enrols.grade from courses, enrols
			where courses.course_id = enrols.course_id order by courses.course_id;
            
select * from students, courses, enrols;

select students.firstname, students.lastname, courses.course_name, enrols.grade
			from students, courses, enrols
			where students.student_id = enrols.student_id and courses.course_id = enrols.course_id;
            
select concat(students.firstname, ' ', students.lastname) as fullname, courses.course_name, enrols.grade
			from students, courses, enrols
			where students.student_id = enrols.student_id and courses.course_id = enrols.course_id
            order by grade desc;
            
select concat(students.firstname, ' ', students.lastname) as fullname, courses.course_name, enrols.grade
			from students, courses, enrols
			where students.student_id = enrols.student_id and courses.course_id = enrols.course_id and grade > 15
            order by grade desc;
            
/*
	We usally use Foreign key as connection condition to join the tables
    but it's not mandatory
*/