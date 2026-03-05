USE world;

DELETE FROM city;

SELECT * FROM city;

INSERT INTO city(Name, CountryCode, District, Population) VALUES('New City', 'IRN', 'Iran', '1000');

SELECT * FROM city;

TRUNCATE TABLE city;

SELECT * FROM city;

INSERT INTO city(Name, CountryCode, District, Population) VALUES('New City', 'IRN', 'Iran', '1000');

SELECT * FROM city;

TRUNCATE countrylanguage;

TRUNCATE city;

TRUNCATE country; -- Truncate is more strict and we can not run this command

DELETE FROM country;