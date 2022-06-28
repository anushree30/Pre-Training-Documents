SELECT * FROM world.countrylanguage;
SELECT world.city.ID, world.city.CountryCode FROM world.city 
INNER JOIN world.countrylanguage 
ON world.city.CountryCode = world.countrylanguage.CountryCode;
SELECT world.city.ID, world.countrylanguage.Language 
FROM world.countrylanguage LEFT JOIN world.city 
ON world.city.CountryCode = world.countrylanguage.CountryCode ORDER BY world.city.ID;
SELECT world.city.Name, world.countrylanguage.Language 
FROM world.countrylanguage Right JOIN world.city 
ON world.city.CountryCode = world.countrylanguage.CountryCode ORDER BY world.city.Name;

SELECT world.city.Name, world.countrylanguage.Language 
FROM world.countrylanguage CROSS JOIN world.city;

SELECT world.countrylanguage.CountryCode FROM world.countrylanguage
UNION
SELECT world.city.CountryCode FROM world.city;

INSERT INTO world.city (world.city.CountryCode)
SELECT world.countrylanguage.CountryCode FROM world.countrylanguage;