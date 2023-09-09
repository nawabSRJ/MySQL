/* Now let's look at how to update one table(destination table) from 
another's data (source table) */

# Updating 'Contacts' Table (destination table) from EMP Table(Source Table)

#UPDATE contacts SET Name = (SELECT emp_name FROM emp WHERE emp_id = 40) WHERE Name = 'Krish Gupta';
# There will be an error in the above Query, because the SOURCE TABLE is returning multiple values (bcoz of data redundancy in source table)

UPDATE contacts SET Name = (SELECT emp_name FROM emp WHERE emp_id = 30) WHERE Name = 'Krish Gupta';
   