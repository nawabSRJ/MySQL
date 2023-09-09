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