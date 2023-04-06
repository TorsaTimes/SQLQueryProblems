/*
Enter your query here.
*/
Select round(long_w, 4) from station WHERE LAT_N=(SELECT MAX(LAT_N) FROM STATION WHERE LAT_N<137.2345);
