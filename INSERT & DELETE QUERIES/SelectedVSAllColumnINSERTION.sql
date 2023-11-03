/*In this Query we will be looking at inserting in selected columns vs in all columns */
/*Inserting in Selected Columns*/
INSERT INTO emp (emp_id, emp_name ) VALUES(30,'Ankush Singla');
/*In the above query we have only entered data in first 2 columns and not the last column*/

/*Inserting in All Columns*/
INSERT INTO emp VALUES(40,'Srijan Kaushik',896900);
/* Here we can skip column specification as this method is intended to fill values in 
all columns and hence we must give all values*/


