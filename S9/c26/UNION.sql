select * from mydb.categories where id > 20;

select * from university2.students where student_id > 5;

select * from mydb.categories where id > 20
union -- اجتماع مجموعه ها
select * from university2.students where student_id > 5;

/*
	Both should have the same amount of columns
*/

select * from mydb.categories where id > 20
union
select * from university2.courses where course_id > 3; -- Error: first one has 3 columns and the second one 2

select * from mydb.categories where id > 20
union
select *, 'x' from university2.courses where course_id > 3;

use university2;

select * from courses left join enrols on courses.course_id = enrols.course_id
union
select * from courses right join enrols on courses.course_id = enrols.course_id;

/*
	UNION will remove the duplicate datas
*/

select * from courses left join enrols on courses.course_id = enrols.course_id
union all
select * from courses right join enrols on courses.course_id = enrols.course_id;