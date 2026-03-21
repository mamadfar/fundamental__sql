SET foreign_key_checks = 0;

CREATE DATABASE IF NOT EXISTS university2;
USE university2;

DROP TABLE IF EXISTS students;
CREATE TABLE students(
	student_id INT PRIMARY KEY AUTO_INCREMENT,
    firstname VARCHAR(40),
    lastname VARCHAR(40)
);

INSERT INTO students(firstname,lastname)
		VALUES('عباس', 'مقدم'),('احمد', 'موسوی'),('کاوه' , 'رایگان'),
			  ('فرهاد', 'وحیدی'),('سعید', 'حیدری'),('محمد' , 'موسوی'),
              ('اسماعیل' , 'عباسی') , ('امیر' , 'مقدم') , ('کیوان', 'خوندل');


DROP TABLE IF EXISTS courses;
CREATE TABLE courses(
	course_id INT PRIMARY KEY AUTO_INCREMENT,
    course_name VARCHAR(50) NOT NULL
);

INSERT INTO courses(course_name) VALUES('فیزیک'),('ریاضی'),('برنامه نویسی'),('پایگاه داده'),('شیمی'),('الکترومغناطیس');

DROP TABLE IF EXISTS enrols;
CREATE TABLE enrols(
	enrol_id INT AUTO_INCREMENT,
    student_id INT,
    course_id INT,
    grade DECIMAL(4,2) CONSTRAINT chk CHECK(grade >= 0 AND grade <= 20),
   
    PRIMARY KEY(enrol_id),
    CONSTRAINT unq1 UNIQUE KEY(student_id , course_id),
    CONSTRAINT enrols_students_fk FOREIGN KEY(student_id) REFERENCES students(student_id),
    CONSTRAINT enrols_courses_fk FOREIGN KEY(course_id) REFERENCES courses(course_id)
);

INSERT INTO enrols(student_id,course_id,grade)
		VALUES(1, 2, 15),(1, 4, 15.4),(2, 2, 20),(2, 4, 11),(1, 7, 18),
			  (4, 1, 19.5),(3, 1, 12.5),(8, 2, 14),(3, 3, 19),(2, 3, 15.2),
              (6, 6, 15.5),(9, 2, 13.5),(3, 4, 16),(5, 3, 7.5),(8, 3, 14.4),
              (6, 4, 8),(4, 6, 15),(1, 6, 14.8),(5, 4, 15),(2, 6, 18);

SET foreign_key_checks = 1;