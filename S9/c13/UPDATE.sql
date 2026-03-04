USE world;

UPDATE city SET Population = Population * 2 WHERE CountryCode = 'IRN';

UPDATE city SET Population = Population / 2 WHERE CountryCode = 'IRN';

SELECT * FROM city WHERE CountryCode = 'IRN';

UPDATE city SET Name = 'Tehran', District = 'Tehran' WHERE ID = 1380;

SELECT * FROM city WHERE CountryCode = 'IRN';

UPDATE city SET District = 'Tehran' WHERE District = 'Teheran';

SELECT * FROM city WHERE CountryCode = 'IRN';

UPDATE city SET CountryCode = 'IRAN' WHERE CountryCode = 'IRN'; -- Error: CountryCode is a CHAR(3)

UPDATE city SET CountryCode = 'PRS' WHERE CountryCode = 'IRN'; -- Error: CountryCode (FK) == 'PRS' is not in the country table

UPDATE city SET CountryCode = 'TUR' WHERE CountryCode = 'IRN';

SELECT * FROM city WHERE CountryCode = 'TUR';

UPDATE city SET CountryCode = 'IRN' WHERE CountryCode = 'TUR' AND Name NOT IN('Istanbul', 'Ankara', 'Izmir');

SELECT * FROM city WHERE CountryCode = 'TUR';

SELECT * FROM city WHERE CountryCode = 'IRN';

UPDATE city SET Name = CONCAT(Name, '-city') LIMIT 10;

SELECT * FROM city;

UPDATE city SET Name = CONCAT(Name, '-', Name) ORDER BY Population DESC LIMIT 10;

SELECT * FROM city ORDER BY Population DESC;