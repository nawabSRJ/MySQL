# Q-7. Write an SQL query to print the DEPARTMENT from the Worker table after removing white spaces from the left side. 
USE ORG;
Select LTRIM(DEPARTMENT) from Worker;
