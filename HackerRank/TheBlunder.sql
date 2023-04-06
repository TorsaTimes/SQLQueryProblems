/*
Enter your query here.
*/

Select CEIL((AVG(salary)) - (AVG(REPLACE(salary, '0', '')))) from employees;
