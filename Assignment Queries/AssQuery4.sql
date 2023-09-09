# Q-4. Write an SQL query to print the first three characters of FIRST_NAME from the Worker table 
USE ORG;
Select substring(FIRST_NAME,1,3) from Worker;