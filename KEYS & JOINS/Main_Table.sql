CREATE TABLE Workers
(
	id int not null unique,
    name varchar(100) not null,
    email varchar(100) not null unique,
    city int null,
    primary key(id),
    foreign key(city) references cities(cid)
)

# city will contain an int value to be matched in the reference table 'cities'