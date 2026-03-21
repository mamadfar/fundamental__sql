use university2;

select * from courses inner join enrols on courses.course_id = enrols.course_id;

select * from courses left outer join enrols on courses.course_id = enrols.course_id;

/*
	The word OUTER is optional
*/

select * from students left join enrols on students.student_id = enrols.student_id;

select * from students left join enrols
			on students.student_id = enrols.student_id
            where enrol_id is null;
            
/*
	Using ON and connection condition in OUTER JOIN is mandatory
*/

select * from courses left join enrols using(course_id);

select * from courses right join enrols using(course_id);

select * from enrols right join courses using(course_id);

use mydb;

select c.cat_name, p.cat_name as parent
		from categories as p, categories as c where p.id = c.parent_id;
        
select c.cat_name, p.cat_name as parent
		from categories as p right join categories as c on p.id = c.parent_id;
        
select c.cat_name, p.cat_name as parent
		from categories as p left join categories as c on p.id = c.parent_id;
        
select c.cat_name, p.cat_name as parent
		from categories as c left join categories as p on p.id = c.parent_id;