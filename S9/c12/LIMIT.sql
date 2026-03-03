USE world;

SELECT * FROM city LIMIT 10;

SELECT * FROM city ORDER BY Population DESC LIMIT 10;

SELECT * FROM city WHERE CountryCode = 'IRN' ORDER BY Name LIMIT 10;

SELECT * FROM city WHERE CountryCode = 'IRN' ORDER BY Population DESC LIMIT 0, 10;

SELECT * FROM city WHERE CountryCode = 'IRN' ORDER BY Population DESC LIMIT 10, 10;

SELECT * FROM city WHERE CountryCode = 'IRN' ORDER BY Population DESC LIMIT 20, 10;

SELECT * FROM city WHERE CountryCode = 'IRN' ORDER BY Population DESC LIMIT 10 OFFSET 20;

SELECT * FROM city WHERE CountryCode = 'IRN' ORDER BY Population DESC LIMIT 10 OFFSET 5; -- 10 items from index 5