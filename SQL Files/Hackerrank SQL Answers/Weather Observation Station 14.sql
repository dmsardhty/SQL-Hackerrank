/*
Query the greatest value of the Northern Latitudes (LAT_N)
from STATION that is less than 137.2345 
Truncate your answer to  decimal places.
*/

select truncate(max(LAT_N), 4)
from station
where lat_n < 137.2345;