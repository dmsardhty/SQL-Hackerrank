/*
Query the Western Longitude (LONG_W) 
where the smallest Northern Latitude (LAT_N) in STATION is greater than . 
Round your answer to  decimal places.
*/

select round(LONG_W,4) 
from STATION 
where LAT_N>38.7780 
order by LAT_N limit 1;