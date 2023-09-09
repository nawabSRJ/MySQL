use padhai;
INSERT INTO EMP (EMP_ID , EMP_NAME, EMP_PNO) SELECT c_id, Name , Pno from contacts where c_id = 9;
/* In this Command we are exporting data from contacts table and inserting into emp table */