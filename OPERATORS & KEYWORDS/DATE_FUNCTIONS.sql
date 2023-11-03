USE PADHAI;
CREATE TABLE HOSPITAL (PID INT NOT NULL , PNAME VARCHAR(100) NOT NULL , Admit_Data DATE NOT NULL , Discharge_Date DATE NOT NULL);

# to change the format of date 
SELECT DATE_FORMAT(NOW(), '%d-%m-%Y') AS formatted_date; # OR

UPDATE HOSPITAL
SET ADMIT_DATA = DATE_FORMAT(Admit_Data, '%d-%m-%Y') AND  DISCHARGE_DATE = DATE_FORMAT(Discharge_Date, '%d-%m-%Y');

#INSERT INTO HOSPITAL VALUES(1,'Utkarsh Rana','03-03-2023','07-04-2023'),(2,'Prakash Rana','05-03-2023','07-03-2023'),(3,'Manav Bohra','10-03-2023','31-03-2023'),(4,'Rinku Thareja','12-03-2023','13-03-2023');
USE PADHAI;
INSERT INTO HOSPITAL VALUES
(1, 'Utkarsh Rana', '2023-03-03', '2023-04-07'),
(2, 'Prakash Rana', '2023-03-05', '2023-03-07'),
(3, 'Manav Bohra', '2023-03-10', '2023-03-31'),
(4, 'Rinku Thareja', '2023-03-12', '2023-03-13');

SELECT * FROM HOSPITAL;

# Let's see how to calculate the number of days, when two dates are given : 
SELECT admit_data , discharge_date, DATEDIFF(discharge_date , admit_data) as Days_Stayed FROM HOSPITAL;
