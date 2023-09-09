# Updating multiple columns (in a single row)

Use padhai;
UPDATE contacts SET Name = 'Shashank Shukla' , Pno = 698867 Where Name = 'Shanky Shukla';

/* as you can see : here we can use any parameter in where cond. even the one which we 
are modifying. This states that where condition is analyzed first (searching is done first) 
and then Updation is performed */
# Now lets perform Updation through some other parameter in where condition

UPDATE contacts SET Pno = 999751 where Name = 'Sparsh Shukla';
# The above Query Executed Successfully !!!