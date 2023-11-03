/* DELETE Syntax :

DELETE FROM table_name WHERE condition;

!! WARNING !! - The WHERE clause specifies which record(s) should be deleted. If you omit the WHERE clause, all records in the table will be deleted!
*/

DELETE FROM padhai.donations where donation < 500;

# To delete all records :
DELETE * FROM padhai.donations;		# error -> this is NOT the right command

DELETE FROM padhai.donations ;  # Correct Command to delete all records

# To delete all/selected records use -> DELETE , whereas to remove the table from the database use -> DROP Command :

# Syntax : DROP TABLE {TABLE_NAME};


