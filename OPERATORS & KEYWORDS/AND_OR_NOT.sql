/* 
	AND Operator : 	Compares Two expressions and returns True if both are True
    OR Operator : Compares Two expressions and returns True if either of the expression is True
    NOT Operator : reverses or negates the input
*/

SELECT * FROM PADHAI.CONTACTS
WHERE C_ID >= 2 AND C_ID <= 8;

SELECT * FROM STUDENTS
WHERE CITY = 'Agra' or CITY = 'Lucknow';

SELECT * FROM STUDENTS
WHERE NOT CITY = 'Agra';

SELECT * FROM STUDENTS
WHERE CITY <> 'Agra';

# the above 2 statements will have the same o/p , you can use both 'NOT' Operator or '<>' which means '!=' (NOT EQUAL TO)

SELECT * FROM STUDENTS
WHERE NOT CITY = 'Agra' AND NOT CITY = 'Lucknow';
# no contacts of agra and lucknow in the above statement

