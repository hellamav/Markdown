USE WORLD;

-- SELECT COUNT(name) FROM city WHERE countrycode = 'USA';

-- SELECT population
-- FROM country
-- WHERE localname = 'Argentina';


SELECT name, lifeExpectancy
FROM COUNTRY
WHERE lifeexpectancy IS NOT NULL
ORDER BY lifeexpectancy DESC
LIMIT 1;


