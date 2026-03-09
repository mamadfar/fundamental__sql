use mydb;

drop table if exists fractionals;
create table fractionals(
	decimal_field DECIMAL(20, 3), -- Or NUMERIC / DEC / FIXED --- Means 17 Integers and 3 Decimals
    float_field FLOAT, -- 
    double_field DOUBLE -- Or REAL / DOUBLE PRECISION
);

insert into fractionals values (1, 2, 3);

insert into fractionals values (5678.45, 1.222222222222, 1.222222222222);

insert into fractionals values (5678.4543, 1.222222222222e18, 1.222222222222e120); -- Warning --- It has 4 decimals

insert into fractionals values (561231123123423423.45, 2, 3); -- Error --- It has 18 integers and 2 decimals