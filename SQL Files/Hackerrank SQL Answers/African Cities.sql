select c1.name as cities
from city as c1
left join country as c2
on c1.countrycode = c2.code
where c2.continent = 'Africa'