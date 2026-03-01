TRUNCATE TABLE students;

INSERT INTO students VALUES (1, 'محمد', 'فرهادی');

-- INSERT INTO students VALUES (1, 'اتابک', 'هوشندگی'); -- It will throw an error, because PK is duplicate

INSERT INTO students(firstname, lastname) VALUES ('لعیا', 'دلشاد'); -- We usually use this form instead of the first INSERT

-- INSERT INTO students(firstname) VALUES ('لعیا');

INSERT INTO students(firstname, lastname) VALUES ('جواد', 'دلشاد'), ('زهرا', 'دلشاد');