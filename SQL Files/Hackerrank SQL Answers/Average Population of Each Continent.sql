/*Given the CITY and COUNTRY tables, 
query the names of all the continents (COUNTRY.Continent) 
and their respective average city populations (CITY.Population) 
rounded down to the nearest integer.

Note: CITY.CountryCode and COUNTRY.Code are matching key columns.*/

select c2.continent, floor(avg(c1.population))
from city as c1
inner join country as c2
on c1.countrycode = c2.code
group by c2.continent

