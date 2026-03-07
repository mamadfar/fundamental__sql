select sqrt(pow(3, 2) + pow(4, 2)) as hypotenuse;

prepare ps1 from 'select sqrt(pow(?, 2) + pow(?, 2))';
set @a = 3;
set @b = 4;

execute ps1 using @a, @b;

set @c = 6;
set @d = 8;
execute ps1 using @c, @d;

/*
	Using PREPARE:
	- Increase the executation speed
    - Increase the scurity
*/

set @query = 'select sqrt(pow(?, 2) + pow(?, 2)) as hypotenuse';
prepare ps2 from @query;
execute ps2 using @a, @b;

deallocate prepare ps1;
execute ps1 using @a, @b; -- Error: Unknown prepared statement
execute ps2 using @a, @b;

deallocate prepare ps2;
execute ps2 using @a, @b; -- Error: Unknown prepared statement

prepare crowds from 'select * from world.city order by Population desc limit 10';
execute crowds;

prepare ps3 from 'update world.city set CountryCode = "IRN" where CountryCode = ?';
set @e = 'CHN';
execute ps3 using @e;
set @f = 'GBR';
execute ps3 using @f;

select * from world.city where CountryCode = 'IRN';