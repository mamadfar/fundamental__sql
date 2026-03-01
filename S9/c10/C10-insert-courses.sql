INSERT INTO courses VALUES('1','فیزیک'); -- There isn't any difference between '1' and 1

INSERT INTO courses(course_name) VALUES('ریاضی'), ('برنامه نویسی'), ('پایگاه داده');

INSERT INTO courses VALUES(14, 'ریاضی');

INSERT INTO courses(course_name) VALUES('الکترومغناطیس'), ('ترمودینامیک');

/*
	We have IDs 1, 2, 3, 14
    In this case the new datas
    will have ID's bigger than 14
    In this case 15, 16
    So, it will be always increase
    the latest ID
*/