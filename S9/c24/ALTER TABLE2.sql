use university2;

alter table courses drop primary key; -- Error: We can't remove auto increment column

alter table courses change column course_id course_id int; -- Remove the auto increment constraint

alter table courses drop primary key;

alter table courses add primary key(course_id);

alter table courses change column course_id course_id int auto_increment;

alter table courses add constraint unq unique(course_name);

alter table courses drop constraint unq;

alter table enrols drop constraint chk; -- Or DROP CHECK chk

alter table enrols add constraint chk check(grade >= 0 and grade <= 20);

alter table enrols add constraint fk foreign key(course_id) references courses(course_id);

alter table enrols drop constraint fk;