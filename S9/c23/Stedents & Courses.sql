use university;

drop table if exists students;
create table students(
	student_id int primary key auto_increment,
    firstname varchar(40),
    lastname varchar(40)
);

insert into students(firstname,lastname)
values('محمد','فرهادی'), ('لعیا','دلشاد'), ('اتابک','هوشنگی'), ('عباس','مقدم');

drop table if exists courses;
create table courses(
	course_id int primary key auto_increment,
    course_name varchar(50) not null
);

insert into courses(course_name)
values('فیزیک'), ('ریاضی'), ('برنامه نویسی'), ('پایگاه داده');