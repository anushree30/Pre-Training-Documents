SELECT * FROM world.city;
SELECT * FROM world.city WHERE Population > 1780000;
SELECT DISTINCT District FROM world.city;
SELECT DISTINCT District FROM world.city ORDER BY District;
SELECT CountryCode, Population FROM world.city WHERE Population > 200000 AND ID < 30;
SELECT CountryCode, Population FROM world.city WHERE Population > 200000 OR ID < 30;
INSERT INTO world.city (ID,Name,CountryCode,District,Population) VALUES (100255, 'New', 'IND', 'Sant Ramdas', 200000 );
UPDATE world.city SET CountryCode = 'IND' WHERE ID = 1;
DELETE FROM world.city WHERE ID = 6;
SELECT * FROM world.city LIMIT 3;

SELECT * FROM world.city WHERE CountryCode LIKE 'A%';
SELECT * FROM world.city WHERE CountryCode LIKE '%G%';
SELECT * FROM world.city WHERE CountryCode LIKE '_O_';
SELECT * FROM world.city WHERE Population LIKE '22%';

SELECT * FROM world.city WHERE CountryCode IN ('DZA', 'IND', 'ARG');
SELECT * FROM world.city WHERE ID BETWEEN 10 AND 20;
SELECT CountryCode AS Code FROM world.city;




