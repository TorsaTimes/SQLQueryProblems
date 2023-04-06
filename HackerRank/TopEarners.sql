/*
Enter your query here.
*/
Select months * salary, count(*) from employee
GROUP BY months * salary
ORDER BY months * salary DESC
LIMIT 1;
