create schema test;
use test;

drop table if exists users;

create table if not exists users(
	id int unsigned primary key auto_increment,
    username varchar(50) not null unique,
    email varchar(50) character set utf8mb4 collate utf8mb4_general_ci unique default null,
    height int unsigned,
    weight int unsigned,
    bmi float generated always as (weight / pow(height/100, 2)) virtual
);

insert into users(username, email, height, weight) values('user1', 'a@b.com', 170,70);

insert into users(username, email, height, weight) values('user2', 'a@c.com', 170,70);

insert into users(username, height, weight) values('user3', 180,70);

insert into users(username, height, weight) values('user4', 160,80);

show create table users;

/*
	CREATE TABLE `users` (
  `id` int unsigned NOT NULL AUTO_INCREMENT,
  `username` varchar(50) NOT NULL,
  `email` varchar(50) CHARACTER SET utf8mb4 COLLATE utf8mb4_general_ci DEFAULT NULL,
  `height` int unsigned DEFAULT NULL,
  `weight` int unsigned DEFAULT NULL,
  `bmi` float GENERATED ALWAYS AS ((`weight` / pow((`height` / 100),2))) VIRTUAL,
  PRIMARY KEY (`id`),
  UNIQUE KEY `username` (`username`),
  UNIQUE KEY `email` (`email`)
) ENGINE=InnoDB AUTO_INCREMENT=6 DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_0900_ai_ci
*/

show columns from users;

explain users;

desc users;

describe users;
