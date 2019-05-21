-- Instructions: Use a combination of aggregates, joins, 
-- limit and group by to complete the following SQL queries. 
-- Each query should have 10 or less rows as a result.

-- 1. Display the total number of countries in the country table.
SELECT *
from "country"
ORDER BY "country".name DESC
LIMIT 10;


-- 2. Display the entire world population (research SUM). 
SELECT SUM
("population")
FROM "country";

-- 3. Displays the name and population for the 10 countries with the highest population.
SELECT "name", "population" FROM "country"
ORDER BY "population" DESC LIMIT 10;

-- 4. Displays the number of countries in each region.
SELECT "region".name, count(*) FROM "country"
JOIN "region" ON "country".region_id= "region".id
GROUP BY "region".id;

-- 5. Displays the total population for each region.
SELECT "region".name, SUM("population") from "country"
JOIN "region" on "country".region_id = "region".id
GROUP BY "region".id;

-- 6. Display the name and sq km for the 10 countries with the most land area (sort by land area).
SELECT "country".name, "land_area".sq_km from "country"
JOIN "land_area" on "country".country_code = "land_area".country_code
ORDER BY "sq_km" DESC LIMIT 10;

-- Stretch Mode

-- 7. Display the total land area for each region sorted by land area (requires two joins). 


-- 8. Display the top 10 countries with the highest population density (greatest population per sq km).


-- 9. Display the population density for each region (sort by population density).


-- 10. Display the population density for the 10 countries with the largest land area.