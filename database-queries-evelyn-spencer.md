Save your queries in a file if you want to keep them for posterity.

WHERE
What is the population of the US? (HINT: 278357000)

SELECT name, population
FROM country
WHERE name = 'United States'
"United States"	278357000

What is the area of the US? (HINT: 9.36352e+06)

SELECT name, surfacearea
FROM country
WHERE name = 'United States'
"United States"	9.36352e+06

Which countries gained their independence before 1963?

SELECT name, indepyear
FROM country
WHERE indepyear IS NOT null
AND indepyear < 1963
121: "United States"	1776

List the countries in Africa that have a population smaller than 30,000,000 and a life expectancy of more than 45? (HINT: 37 entries)

ELECT name, population, lifeexpectancy
FROM country 
WHERE continent = 'Africa' AND population < 30e6 AND lifeexpectancy > 45 AND lifeexpectancy IS NOT NULL
37: "Tunisia"	9586000	73.7

Which countries are something like a republic? (HINT: Are there 122 or 143?)

SELECT governmentform
FROM country
WHERE governmentform LIKE '%Republic'
143: "Republic"

Which countries are some kind of republic and achieved independence after 1945? (HINT: 92 entries)

SELECT name, governmentform
FROM country
WHERE governmentform LIKE '%Republic'
AND indepyear > 1945 AND indepyear IS NOT NULL
92: "Zimbabwe"	"Republic"

Which countries achieved independence after 1945 and are not some kind of republic? (HINT: 27 entries)

SELECT name, governmentform
FROM country
WHERE governmentform NOT LIKE '%Republic'
AND indepyear > 1945 AND indepyear IS NOT NULL
27: "Tuvalu"	"Constitutional Monarchy"

ORDER BY
Which fifteen countries have the lowest life expectancy? (HINT: starts with Zambia, ends with Sierra Leonne)

WITH lowest_lifeexpectancy AS (
SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy > 0
)

SELECT name, lifeexpectancy
FROM lowest_lifeexpectancy
WHERE lifeexpectancy IS NOT NULL 
ORDER BY lifeexpectancy ASC
LIMIT 15
15: "Sierra Leone"	45.3

Which fifteen countries have the highest life expectancy? (HINT: starts with Andorra, ends with Spain)

WITH highest_lifeexpectancy AS (
SELECT name, lifeexpectancy
FROM country
WHERE lifeexpectancy > 0
)

SELECT name, lifeexpectancy
FROM highest_lifeexpectancy
WHERE lifeexpectancy IS NOT NULL 
ORDER BY lifeexpectancy DESC
LIMIT 15
15: "Spain"	78.8

Which five countries have the lowest population density (density = population / surfacearea)? (HINT: starts with Greenland)


Which countries have the highest population density?(HINT: starts with Macao)


Which is the smallest country by area? (HINT: .4)


Which is the smallest country by population? (HINT: 50)?


Which is the biggest country by area? (HINT: 1.70754e+07)


Which is the biggest country by population? (HINT: 1277558000)


Who is the most influential head of state measured by population? (HINT: Jiang Zemin)


Subqueries: WITH
Of the countries with the top 10 gnp, which has the smallest population? (HINT: Canada)


Of the 10 least populated countries with permament residents (a non-zero population), which has the largest surfacearea? (HINT: Svalbard and Jan Mayen)


Aggregate Functions: GROUP BY
Which region has the highest average gnp? (HINT: North America)


Who is the most influential head of state measured by surface area? (HINT: Elisabeth II)


What is the average life expectancy for all continents?


What are the most common forms of government? (HINT: use count(*))


How many countries are in North America?


What is the total population of all continents?


Stretch Challenges
Which countries have the letter ‘z’ in the name? How many?


Of the smallest 10 countries by area, which has the biggest gnp? (HINT: Macao)


Of the smallest 10 countries by population, which has the biggest per capita gnp?


Of the biggest 10 countries by area, which has the biggest gnp?


Of the biggest 10 countries by population, which has the biggest per capita gnp?


What is the sum of surface area of the 10 biggest countries in the world? The 10 smallest?


What year is this country database from? Cross reference various pieces of information to determine the age of this database.