use mydb;

select * from categories inner join categories; -- Error

/*
	We should use alias name for the tables
    Because they have the same name
*/

select * from categories as c1 inner join categories as c2;

select * from categories as p inner join categories as c on p.id = c.parent_id;

select * from categories as p, categories as c where p.id = c.parent_id;

select c.cat_name, p.cat_name as parent
			from categories as p, categories as c where p.id = c.parent_id;