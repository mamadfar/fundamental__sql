SELECT Name FROM city;

SELECT DISTINCT Name FROM city;

SELECT DISTINCT Name, CountryCode FROM city; -- Same name in the same country

SELECT * FROM city WHERE CountryCode = 'IRN';

SELECT District FROM city WHERE CountryCode = 'IRN';

SELECT DISTINCT District FROM city WHERE CountryCode = 'IRN';

SELECT Name, Population / 1000 FROM city;

SELECT Name, FLOOR(Population / 1000) FROM city;

SELECT Name, SurfaceArea, SurfaceArea / 2.59 from country WHERE Continent = 'Asia';

SELECT Name, SurfaceArea AS SqKms, SurfaceArea / 2.59 AS SqMiles from country WHERE Continent = 'Asia';

SELECT Name, SurfaceArea area from country WHERE Continent = 'North America'; -- SurfaceArea area === SurfaceArea AS area