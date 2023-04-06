/*
Enter your query here.
*/

select IF(a = b and b = c, "Equilateral", IF((a = b and a + b > c) or  (b = c and b + c > a) or (c = a and c + a > b), "Isosceles", IF(((a + b) <= c and a < c and b < c), "Not A Triangle",  IF(a <> b and  a <> c and c <> b, "Scalene", "")))) from TRIANGLES;
