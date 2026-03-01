INSERT INTO courses(course_name) VALUES('2 اقتصاد خرد'); 

SELECT LAST_INSERT_ID(); -- The ID of the last data that has been inserted to the DB in a session

INSERT INTO enrols VALUES(2, LAST_INSERT_ID(), 20), (3, LAST_INSERT_ID(), 15);

SELECT ROW_COUNT(); -- The number the rows that has been effected