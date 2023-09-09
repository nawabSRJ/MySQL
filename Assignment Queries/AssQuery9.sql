# Q-9. Write an SQL query to print the FIRST_NAME from the Worker table after replacing ‘a’ with ‘A’. 
USE ORG;
Select REPLACE(FIRST_NAME,'a','A') from Worker;
