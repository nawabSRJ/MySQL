/*
MySQL String Functions
*/

# ASCII	: Returns the ASCII value for the specific character or leftmost character in case of a string.

SELECT ASCII('A');
Select ASCII('Ashmit');

SELECT ASCII(NAME) AS WKR_NAME FROM PADHAI.WORKERS;
# displays the ascii value of first character of name column of workers tables.
#column name : WKR_NAME

SELECT ASCII(NAME) FROM PADHAI.WORKERS;
# this statement will also give the same answer except that the column name under which the result set is displayed is changed to 'ASCII(NAME)'
#------------------------------------------------------------------------

# CHAR_LENGTH : Returns the length of a string (in characters)
# also as CHARACTER_LENGTH

SELECT CHAR_LENGTH('MySQL'); # 5 , clm name : CHAR_LENGTH('MySQL')
SELECT CHAR_LENGTH("SQL Tutorial") AS LengthOfString; # 12 , clm name : LengthOfString

SELECT char_length(NAME) AS NAME_LEN FROM PADHAI.WORKERS WHERE ID = 1; # 12, space included
SELECT character_length(NAME) AS NAME_LEN FROM PADHAI.WORKERS WHERE ID in(1,4,5,6,7); # multiple o/p under clm name : 'NAME_LEN'

#----------------------------------------------------------------------------------

# CONCAT : Adds two or more expressions together

SELECT CONCAT("SQL ", "Tutorial ", "is ", "fun!") AS ConcatenatedString;
#notice that space is given at the end of each character!!!

SELECT CONCAT(NAME,"  ",PNO) AS NAME_NUMBER FROM PADHAI.CONTACTS;

#-----------------------------------------------------------------------

#CONCAT_WS : Adds two or more expressions together with a separator
# syntax : CONCAT_WS(separator, string1, string2, ...)

SELECT CONCAT_WS(', ', 'John', 'Doe', '123 Main St');

SELECT CONCAT_WS (' : ',NAME , PNO) AS NAME_PNO FROM PADHAI.CONTACTS;
SELECT CONCAT_WS(' - ',NAME,EMAIL) AS NAME_EMAIL FROM PADHAI.STUDENTS;

#-------------------------------------------------------------------------------------

# FIELD : Returns the index position of a value in a list of values
# FIELD(value, value1, value2, ...)
# value is the value you want to find the position of ; 
# value1, value2, and so on are the values in the list to search.
# 1 based indexing
# if the specified value is not found in the list of values, this function will return 0.
SELECT FIELD('apple', 'banana', 'cherry', 'apple', 'grape');
SELECT FIELD('orange', 'banana', 'cherry', 'apple', 'grape');

SELECT FIELD("q", "s", "Q", "q"); # 2 
# which means fives only the first occurence 

SELECT FIELD("Q", "s", "r", "q"); # 3
SELECT FIELD(5, 0, 1, 2, 3, 4, 5); # 6

#---------------------------------------------------------------------------------

# FIND_IN_SET : Returns the position of a string within a list of strings 
OR 
/* is used to find the position of a value within a comma-separated list of values. It returns the position of the value if it exists in the list, or 0 if the value is not found.
*/

SELECT FIND_IN_SET("q", "s,q,l"); # 2
SELECT find_in_set("j","srajan,j"); # 2
SELECT FIND_IN_SET('apple', 'banana,cherry,apple,grape');
SELECT find_in_set('Wahi',NAME) FROM PADHAI.WORKERS WHERE ID = 4; # 0 ? idk why?!!

# basically this is same as last finc or field()

#---------------------------------------------------------------------------------
# FORMAT :  is used to format a number with a specified number of decimal places and optional thousands separator. This function is often used to make numeric values more readable by adding commas as thousands separators and formatting them with a specific number of decimal places.

# syntax : FORMAT(number, decimal_places)

SELECT FORMAT(1234567.8901, 2); # '1,234,567.89'
SELECT FORMAT(1234567.890190877,4);  # '1,234,567.8902'
SELECT FORMAT(250500.5634, 0); # '250,501'
SELECT FORMAT(250500.3634, 0); # '250,500' 
# rounds off 

#---------------------------------------------------------------------------------

# INSERT : inserts a string within a string at the specified position and for a certain number of characters.

#Insert the string "Example" into the string "W3Schools.com". Replace the first nine characters:
# syntax :
# INSERT(string, position, number, string2)

SELECT INSERT("W3Schools.com", 1, 9, "Example");

SELECT INSERT("mysql",1,2,"Microsoft");

SELECT INSERT("W3Schools.in", 11, 3, "com");

#------------------------------------------------------------------------------

# INSTR : function returns the position of the first occurrence of a string in another string.

SELECT INSTR("W3Schools.com", "3") AS MatchPosition;
SELECT INSTR("Srajan","j") as pos;
SELECT INSTR("Aaditya","tya") as pos; # will return only the first occurence

SELECT INSTR("Virat Kohli","za") as pos; # 0 if not found

SELECT INSTR(Name,"Wahi") as namepos from padhai.workers WHERE ID = 4;	# 9 position 

#------------------------------------------------------------------------------------

# LCASE() : function converts a string to lower-case.
SELECT LCASE("SQL Tutorial is FUN!");



SELECT lcase(NAME) from padhai.students;
SELECT LCASE(CITY) FROM PADHAI.STUDENTS;
# cannot specify 2 parameters in lcase() function , it considers onyl one parameter/clm 

#--------------------------------------------------------------------------------------

# LEFT : function extracts a number of characters from a string (starting from left).

SELECT LEFT(Name,2) from padhai.workers;

SELECT LEFT("Srajan",4) as trimName;

#----------------------------------------------------------------------------------

# LENGTH : returns the length of the string in bytes

SELECT LENGTH('MySQL'); # 5 -> one byte occupied by each character




