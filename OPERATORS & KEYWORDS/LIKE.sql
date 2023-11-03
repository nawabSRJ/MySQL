/* 
 LIKE Operator : used in a WHERE clause to search for a specified pattern in a column.
 The two wildcards used with it are :
 
 -> The percent sign (%) represents zero,one or multiple characters
 -> The underscore (_) represents one,single character
*/
USE PADHAI;
SELECT * FROM students WHERE Name LIKE "a";
# In the above Query no error will be generated but we won't get any output as well because we have not used Wildcards(% , _)

SELECT * FROM students WHERE Name LIKE "%a";	#ends with 'a' 
# doesn't matter if you write 'a' or 'A' in wildcard section , NOT CASE SENSITIVE

SELECT * FROM students WHERE Name LIKE "a%"; #starts with 'a'

SELECT * FROM students WHERE Name LIKE "a%m"; #starts with 'a' and ends with 'm'

SELECT * FROM students WHERE Name LIKE "%a%";	# 'a' in between

SELECT * FROM students WHERE Name LIKE "_a%"; # 'a' is 2nd character followed by some string
SELECT * FROM students WHERE Name LIKE "_a"; # 'a' is 2nd character followed by No string -> No output as their is no record like that, Let's curate one record and test this command again.

INSERT INTO students VALUES(11,'Pa','pa123@gmail.com',72,1,'Mumbai');	#record Inserted

SELECT * FROM students WHERE Name LIKE "_a";	#we got the above record as the Output !!!

#--------------------------------- DIFFERENT QUERIES -------------------------------------------


SELECT * FROM students WHERE Name LIKE "%_A_%";	# at least one character before and after 'a'
# Question for You : Will we get record with the name 'Pa' as an answer here?

SELECT * FROM students WHERE Name LIKE "______A%";	# 'a' is 7th character in Name Field
# we have only one record like this




