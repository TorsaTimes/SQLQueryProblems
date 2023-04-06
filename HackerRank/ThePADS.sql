/*
Enter your query here.
*/

select 
    concat(name,'(',left(occupation,1),')') 
    as a
from occupations

union

select 
    concat('There are a total of ',count(occupation),' ',lower(occupation),'s.') 
    as b
from occupations 
group by occupation
order by a;
