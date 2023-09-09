# Q-6. Write an SQL query to print the FIRST_NAME from the Worker table after removing white spaces from the right side. 

USE ORG;
Select RTRIM(FIRST_NAME) from Worker;