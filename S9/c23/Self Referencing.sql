use mydb;

drop table if exists categories;
create table categories(
	cat_id int primary key auto_increment,
    cat_name varchar(50),
    parent_id int,
    
    foreign key(parent_id) references categories(cat_id) on delete cascade
);

insert into categories(cat_name) values('Digital Products');

insert into categories(cat_name, parent_id) values('Mobile Phone', 1);

insert into categories(cat_name, parent_id) values('Laptop', 1);

insert into categories(cat_name, parent_id) values('Sony', 2);

insert into categories(cat_name, parent_id) values('Samsung', 2);

insert into categories(cat_name, parent_id) values('Apple', 2);

insert into categories(cat_name, parent_id) values('Asus', 3);

insert into categories(cat_name, parent_id) values('Samsung', 3);

insert into categories(cat_name, parent_id) values('Dell', 3);

insert into categories(cat_name, parent_id) values('HP', 33); -- Error: We don't have ID 33 in the cat_id

delete from categories where cat_id = 2;