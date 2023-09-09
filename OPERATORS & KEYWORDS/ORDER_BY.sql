/* 
	Order By Clause : used to sort the result set of a query based on one or more columns in ascending (default) or descending order, enabling control over the presentation of data.

*/
USE PADHAI;
SELECT * FROM students ORDER BY NAME;

SELECT * FROM students ORDER BY NAME DESC;	# will be done in descending order

# order by will be at the last when combined with multiple keywords / clauses

SELECT * FROM students WHERE Name LIKE "%A%"  ORDER BY Name;
# records with 'a' in between arranged in asc order
