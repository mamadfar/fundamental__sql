use university2;

select * from courses left join enrols on courses.course_id = enrols.course_id
intersect -- اشتراک مجموعه ها
select * from courses right join enrols on courses.course_id = enrols.course_id;

select course_id from courses
intersect
select course_id from enrols;

select * from courses left join enrols on courses.course_id = enrols.course_id
except -- تفریق مجموعه ها
select * from courses right join enrols on courses.course_id = enrols.course_id;

select course_id from courses
except
select course_id from enrols;

select course_id from enrols
except
select course_id from courses;

select student_id from students
except
select course_id from courses;