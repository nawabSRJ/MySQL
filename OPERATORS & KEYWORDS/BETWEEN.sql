/* 

BETWEEN Operator : used to fetch records between an inclusive range.
*/

SELECT * FROM PADHAI.STUDENTS WHERE age between 20 and 25;
SELECT * FROM PADHAI.STUDENTS WHERE AGE>= 20 and AGE <= 25;

# both the above commands will give same output

SELECT * FROM PADHAI.STUDENTS WHERE NOT age between 20 and 25;
SELECT * FROM PADHAI.STUDENTS WHERE age NOT between 20 and 25;

# both the above commands will give the same output

# Tricky : 
SELECT * FROM PADHAI.STUDENTS WHERE NOT age NOT between 20 and 25; 	# same output as the first command of this file ~ negation of last command ~ try to visualize it like complement set operation of maths

#-----------------------------------------------------------------------------------------------

SELECT * FROM students where Name between "Sharad" AND "Manav";	   # No Error , No Output , because no range is their for string

SELECT * FROM students where id between 4 and 8; # Working