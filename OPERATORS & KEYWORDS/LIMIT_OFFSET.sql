/* 
	LIMIT Keyword : to limit the number of results that are returned you can simply use LIMIT command with several rows to limit by.

*/

SELECT * FROM padhai.students LIMIT 5;	# by default it will show first 5 records 

# now we can combine limit keyword with other keywords as well

SELECT * FROM padhai.students WHERE Name LIKE "%a%" LIMIT 2;	#again it took first 2 records satisfying the query condition

SELECT * FROM padhai.students ORDER BY NAME DESC LIMIT 5;

SELECT * FROM padhai.students WHERE AGE > 20 LIMIT 5;

#-------------------------------- OFFSET Concept -----------------------------------------

/*
	OFFSET Keyword : used in conjunction with the LIMIT clause to specify the starting point (row offset) from which to retrieve rows in a result set, enabling pagination of query results.

*/

#observe the change in the output of the 2 queries below
SELECT * FROM padhai.students LIMIT 5;
SELECT * FROM padhai.students LIMIT 5 OFFSET 3 ;  # this will start with the 4th id OR it will leave the first 3 rows and only fetch 5 records due to LIMIT Clause


