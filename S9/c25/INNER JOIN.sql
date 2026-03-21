select * from students inner join enrols;

select * from students inner join enrols on students.student_id = enrols.student_id;

select * from students inner join courses inner join enrols
			on students.student_id = enrols.student_id and courses.course_id = enrols.course_id;

select * from students inner join courses inner join enrols
			on students.student_id = enrols.student_id and courses.course_id = enrols.course_id
            where grade > 15 order by grade desc;
            
select concat(students.firstname, ' ', students.lastname) as fullname, courses.course_name, enrols.grade
			from students inner join courses inner join enrols
			on students.student_id = enrols.student_id and courses.course_id = enrols.course_id
            where grade > 15 order by grade desc;
            
/*
	- We can use ON instead of WHERE for connection condition with INNER JOIN
    - CROSS JOIN and INNER JOIN are the same
*/

/*
	If fields that we are using in the connection conditions have the same name,
    we can use USING
*/

select * from courses inner join enrols using(course_id);

/*
	We can't use USING with CROSS JOIN (,)
*/

select * from courses natural join enrols;

/*
	The repeatative columns with NATURAL JOIN will appear only once
*/

select concat(students.firstname, ' ', students.lastname) as fullname, courses.course_name, enrols.grade
			from students inner join courses inner join enrols
			using(student_id, course_id)
            where grade > 15 order by grade desc;
            
select concat(students.firstname, ' ', students.lastname) as fullname, courses.course_name, enrols.grade
			from students natural join courses natural join enrols
            where grade > 15 order by grade desc;
            
/*
	If we use both NATURAL JOIN and INNER JOIN in one query
    the order of the tables matter
*/

select concat(students.firstname, ' ', students.lastname) as fullname, courses.course_name, enrols.grade
			from students natural join enrols inner join courses
			on courses.course_id = enrols.course_id
            where grade > 15 order by grade desc;