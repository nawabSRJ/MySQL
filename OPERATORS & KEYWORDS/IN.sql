/*	IN Operator : Allows you to specify multiple values in a WHERE clause
    The IN Operator is a shorthand for Multiple OR conditions
 */
 
SELECT * FROM PADHAI.STUDENTS 
WHERE AGE = 22 OR AGE = 32 OR AGE = 18;

SELECT * FROM PADHAI.STUDENTS
WHERE AGE IN(22,32,18);

# we have same o/p for both the above statements
# one more example :

SELECT * FROM PADHAI.STUDENTS
WHERE CITY IN('Lucknow','Shimla');

# trying NOT command with the IN Operator ~ Negate the Result
SELECT * FROM PADHAI.STUDENTS
WHERE NOT CITY IN('Lucknow','Shimla');

SELECT * FROM PADHAI.STUDENTS
WHERE CITY NOT IN('Lucknow','Shimla'); # this is also working and same o/p as previous command

# ------------------- IN(SELECT) --------------------------
# You can also use IN with a subquery in the WHERE clause.
# With a subquery you can return all records from the main query that are present in the result of the subquery

SELECT id , name from donations where donation IN (SELECT DONATION FROM DONATIONS WHERE DONATION > 1000 AND DONATION < 15000);