USE world;

DELETE FROM city WHERE ID <= 10;

SELECT * FROM city;

DELETE FROM city WHERE CountryCode = 'CHN';

SELECT * FROM city;

DELETE FROM country WHERE Code = 'IRN';

DELETE FROM country WHERE Code = 'CHN';

/*
	We removed the CHN cities and above code will throw an error
    because, still we have languages tied to this Code
*/

DELETE FROM countryLanguage WHERE CountryCode = 'CHN';

DELETE FROM country WHERE Code = 'CHN';

SELECT * FROM country WHERE Code = 'CHN';

DELETE FROM city WHERE CountryCode = 'GBR' LIMIT 10;

SELECT * FROM city WHERE CountryCode = 'GBR';

DELETE FROM city WHERE CountryCode = 'GBR' ORDER BY Population DESC LIMIT 10;

SELECT * FROM city WHERE CountryCode = 'GBR';