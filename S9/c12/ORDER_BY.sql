USE world;

SELECT * FROM country ORDER BY Population; -- ASC

SELECT * FROM country ORDER BY Population DESC;

SELECT * FROM country ORDER BY Continent;

SELECT * FROM country ORDER BY Continent ASC, Population DESC;

SELECT Name, Continent, Region, Population FROM country ORDER BY Region;

SELECT Name, Continent, Region, Population FROM country ORDER BY FIELD(Region, 'Antarctica', 'Middle East', 'Central Africa');

SELECT Name, Continent, Region, Population FROM country ORDER BY FIELD(Region, 'Antarctica', 'Middle East', 'Central Africa') DESC, Region ASC, Population DESC;

SELECT Name, Continent, Region, Population FROM country ORDER BY Population / SurfaceArea DESC;

/*
	We can use any type of computational expressions after ORDER BY
*/

SELECT RAND(); -- Random number

SELECT Name, Continent, 1 FROM country;

SELECT Name, Continent, RAND() FROM country;

SELECT Name, Continent, RAND() FROM country ORDER BY RAND();

SELECT Name, Continent FROM country ORDER BY RAND();

SELECT Name, Continent FROM country ORDER BY Continent, RAND();

SELECT Name, Continent, Population FROM country WHERE Population > 60000000 ORDER BY Name;

SELECT Name, Continent AS c, Population AS p FROM country ORDER BY c, p DESC;

