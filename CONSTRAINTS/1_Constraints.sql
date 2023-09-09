USE Padhai;
CREATE TABLE Students
(
	id INT NOT NULL UNIQUE,
    Name varchar(100) not null,
    email varchar(150) not null unique,
    age tinyint check (age >= 18),
    status boolean default 1
);

/* Here in the above table description we have set the following constraints :

Not Null -> Mandatory to fill value

Unique -> the value entered should be not similar to any other (or previously declared) values in the table.

check -> basically acts like an 'if' statement, the value entered is checked and then fed in the database , based on the satisfaction of the 'check condition'.

default -> putting a value after 'default' keyword will fill that column with that default value if not specified explicitly.

*/

# Let's try to fill values in the table and verify the constraints that we have applied
# WARNING: please select the queries below and then execute, don't execute the complete tab

INSERT INTO Students
(id,name,email,age) VALUES(1,'Arush Singh','arush@gmail.com',16);

# Error Code: 3819. Check constraint 'students_chk_1' is violated.

# as you can see,we are getting an error because of the constraint we applied on'age'column

INSERT INTO Students
(id,name,email,age) VALUES(1,'Karan Singh','karan@gmail.com',19);
# the above statement is VALID !!!

INSERT INTO Students
(id,name,email,age) VALUES(1,'Karan Yadav','karan@gmail.com',20);
# Error Code: 1062. Duplicate entry '1' for key 'students.id'
INSERT INTO Students
(id,name,email,age) VALUES(2,'Karan Yadav','karan@gmail.com',20);
# Error Code: 1062. Duplicate entry 'karan@gmail.com' for key 'students.email'

INSERT INTO Students
(id,name,email,age) VALUES(2,'Karan Yadav','karan69@gmail.com',20);

# Finally the above Query is VALID , we got the error one-by-one