# SQL Aliases
/*
Aliases can be useful when:

There are more than one table involved in a query
Functions are used in the query
Column names are big or not very readable
Two or more columns are combined together
*/

USE PADHAI;
SELECT C_ID AS ContactID from contacts;		# When alias is used on column


SELECT C_ID from contacts AS ContactID ;	# When alias is used on table

# Creating Two Aliases 
SELECT C_ID AS ContactID, Name AS CustomerName from PADHAI.contacts;

# Creating Aliases with Spaces :
SELECT C_ID AS "ContactID", Name AS "Customer Name" from contacts; # use "" for this 

# Concatenating using Aliases
SELECT concat(C_ID ,',', NAME,',' , pno) as details from padhai.contacts;
# the above query is useful for transfering / inserting data into a csv file

# Aliases for tables
USE PADHAI;
SELECT * FROM CONTACTS AS PERSONS; 
