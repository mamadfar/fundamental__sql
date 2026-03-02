USE world;

SELECT * FROM country;

SELECT Continent, Name, Population from country; -- The order doesn't matter

SELECT Name, Continent, Population from country WHERE Population > 10000000;

SELECT Name, Continent, Population from country WHERE Population > 10000000 OR IndepYear > 1990;

SELECT Name, Continent, Population from country WHERE Population > 10000000 AND Population < 30000000;

SELECT Name, Continent, Population from country WHERE Population BETWEEN 10000000 AND 30000000; -- It will include the range as well

SELECT Name, Continent, Population from country WHERE Population BETWEEN 'AFG' AND 'IRN';

SELECT Name from country WHERE Continent = 'Asia';

/*
	We don't have
    ==, +=, -=, *=, /=, %=, ++, --
    in MySQL
*/

SELECT Name from country WHERE Continent <> 'Asia'; -- OR Continent != 'Asia'

SELECT Name, IndepYear from country WHERE IndepYear IS NULL;

SELECT Name, IndepYear from country WHERE IndepYear IS NOT NULL;

-------------------------------------------------------------------

SELECT * FROM city;

SELECT * FROM city WHERE CountryCode IN ('AFG', 'IRN', 'TUR');

SELECT * FROM city WHERE CountryCode NOT IN ('AFG', 'IRN', 'TUR');
