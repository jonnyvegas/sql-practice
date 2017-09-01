/*
Things to remember:
commas after making table columns
primary key is two words
not null and modifiers go at the end
check all names and dont mistake jonny for jonathan
*/

drop database if exists contacts;

create database contacts;

use contacts;

create table names 
(
    ID mediumint not null auto_increment primary key,
    first varchar(20),
    middle varchar(1),
    last varchar(20)
);

create table addresses 
(
    ID mediumint not null auto_increment primary key,
    nameID mediumint not null,
    address varchar(70),
    city varchar(20),
    state varchar(2),
    zip varchar(5)
);

insert into names (first, middle, last)
values ("Jonny", "E", "Villegas"), ("Shea", "M.", "Lipscomb"), ("Not", NULL, "Sure"), ("Jimi", "M", "Hendrix"),
("John", "R", "Smith"), ("Jane", "A", "Doe"), ("Your", "F", "Mama"), ("Mikey", NULL, "Davis"), ("John", "A", "Jones");

insert into addresses (nameID, address, city, state, zip)
select ID, "25604 Salceda Rd.", "Valencia", "CA", "91355" from names where first="Jonny" AND last="Villegas";

insert into addresses (nameID, address, city, state, zip)
select ID, "25604 Salceda Rd.", "Valencia", "CA", "91355" from names  where first="Shea" AND last="Lipscomb";

insert into addresses (nameID, address, city, state, zip)
select ID, "123 Fake St.", "Northridge", "CA", "91330"  from names where first="Not" AND last="Sure";

insert into addresses (nameID, address, city, state, zip)
select ID, "somewhere", "someplace", "NS", "12345" from names  where first="Jimi" AND last="Hendrix";

insert into addresses (nameID, address, city, state, zip)
select ID, "19552 street", "a city", "LA", "45891" from names where first="John" AND last="Smith";

insert into addresses (nameID, address, city, state, zip)
select ID, "658 Main St.", "Chicago", "IL", "31256" from names where first="Jane" AND last="Doe";

insert into addresses (nameID, address, city, state, zip)
select ID, "123 at home", "Hometown", "HT", "55521" from names where first="Your" AND last="Mama";

insert into addresses (nameID, address, city, state, zip)
select ID, "656 Fir St.", "Los Angeles", "CA", "90320" from names where first="Mikey" AND last="Davis";

insert into addresses (nameID, address, city, state, zip)
select ID, "None", "None", "NO", "98765" from names where first="John" AND last="Jones";


