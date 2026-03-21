use university2;

SET foreign_key_checks = 0;

DROP TABLE IF EXISTS students;
CREATE TABLE students(
	student_id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(40),
    lastname VARCHAR(40)
);

INSERT INTO students(firstname,lastname)
		VALUES('عباس', 'مقدم'),('احمد', 'موسوی'),
			  ('فرهاد', 'وحیدی'),('سعید', 'حیدری');


DROP TABLE IF EXISTS courses;
CREATE TABLE courses(
	course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50) NOT NULL
);

INSERT INTO courses(course_name) VALUES('فیزیک'),('ریاضی'),('برنامه نویسی'),('پایگاه داده');

DROP TABLE IF EXISTS enrols;
CREATE TABLE enrols(
	enrol_id INT AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    grade DECIMAL(4,2) CONSTRAINT chk CHECK(grade >= 0 AND grade <= 20),
   
    PRIMARY KEY(enrol_id),
    CONSTRAINT unq1 UNIQUE KEY(student_id , course_id),
    constraint enrols_students_fk foreign key(student_id) references students(student_id),
    constraint enrols_courses_fk foreign key(course_id) references courses(course_id)
);

INSERT INTO enrols(student_id,course_id,grade)
		VALUES(1, 1, 15),(1, 4, 15.4),(2, 2, 20),(2, 4, 11),(1, 2, 20),
			  (4, 1, 11.5),(3, 1, 12.5),(4, 2, 14),(3, 4, 19),(2, 3, 15.4);

SET foreign_key_checks = 1;