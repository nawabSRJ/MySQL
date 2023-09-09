/* Q-5. Write an SQL query to find the position of the alphabet (‘a’) in the 
first name column ‘Amitabh’ from the Worker table.  */

USE ORG;
Select INSTR(FIRST_NAME, BINARY'a') from Worker where FIRST_NAME = 'Amitabh';
 