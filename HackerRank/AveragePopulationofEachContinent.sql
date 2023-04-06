select COUNTRY.Continent, round(avg(CITY.Population)-0.5)
from country , city
where city.countrycode=country.code
group by COUNTRY.Continent
