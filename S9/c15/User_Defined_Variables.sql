USE world;

-- User-Defined Variables

SELECT @a := 20;

SELECT @a;

SELECT @A; -- Variables are not case-sensitive

SET @a = 10;

SELECT @a;

select @kp := Population AS s FROM city WHERE Name = 'Karaj';

select * from city where Population > @kp order by Population;

select @t := Population from city where CountryCode = 'IRN';

select @t;

/*
	We can only assign Numrical, String, and Null to a variable
    Rest of the Data types will convert to these types
*/

set @tp = (select Population from city where Name = 'Tabriz');

select @tp;