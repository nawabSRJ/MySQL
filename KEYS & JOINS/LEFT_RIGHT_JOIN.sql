/* 
	LEFT JOIN : returns all records from left table(table 1) and the matched records from the right table(table 2)
*/
# Note - to see what worker belongs to what city run this query, here you will get the city name corresponding to worker name due t
SELECT * FROM workers LEFT JOIN cities
ON workers.city = cities.cid;

# look at this query, to see only name and corresponding city 
SELECT * FROM workers LEFT JOIN cities
ON workers.city = cities.cid;

#notice - that both column names you want are extracted from workers table.