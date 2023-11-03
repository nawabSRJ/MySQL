/*
SELECTS RECORDS THAT HAVE MATCHING VALUES IN BOTH THE TABLES
*/


use padhai;
SELECT * FROM workers INNER JOIN cities ON workers.id = cities.cid;	# working but no useful result because of a logical mistake / anomaly, that is, 'workers.id = cities.cid' 


# This is the correct statement to view which worker is of which city:
SELECT * FROM workers INNER JOIN cities ON workers.city = cities.cid;
# and as you can observe in this statement we don't have unnecessary 'bangalore' column


SELECT * FROM STU_INFO INNER JOIN STU_ADDRESS ON stu_info.id = stu_address.id;
# in above query we can see id also, let's remove it and only see name and city:

SELECT NAME , CITY FROM STU_INFO INNER JOIN STU_ADDRESS ON STU_INFO.ID = STU_ADDRESS.ID;
# Working
