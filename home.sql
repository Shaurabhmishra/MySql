show databases;

create database learning;

use learning;

create table cats(
    name varchar(20),
    age int
);

insert into cats(name, age)
VALUES ('jetson', 7),
       ('victoria', 12),
       ('sadie', 3),
       ('lazy bear', 1);

select * from cats;

create table people(
    first_name varchar(20),
    last_name varchar(20),
    age int
);

insert into people(first_name, last_name, age)
values ('Tina', 'Belcher', 13),
       ('Bob', 'Belcher', 42),
       ('Calvin', 'Fischoeder', 70);

select * from people;

desc people;

show warnings ;

insert into people(first_name, last_name)
values('stephan', 'salvatore');

insert into people() values();

create table cats2
(
    name varchar(100) not null,
    age int not null
);

desc cats2;

insert into cats2(name) values('Texas');
insert into cats2(name, age) values('alina');

select * from cats2;

create table cats3(
    name varchar(20) default 'no name provided',
    age int default 99

);

desc cats3;

insert into cats3(name) values('Texas');
insert into cats3(age) values(15);

select * from cats3;

create table cats4(
    name varchar(100) not null default 'no name provided',
    age int not null default 99
);

desc cats4;

insert into cats4(name, age)
values('cali', 10);

create table sudent(stud_id int not null,
name varchar(20),
rollno int,
primary key (stud_id));

desc sudent;

insert into sudent(stud_id, name, rollno)
VALUES
       (2, 'sandrick', 22),
       (3, 'fitty', 26),
       (4, 'zippy', 28),
       (5, 'maddy', 20);

select * from sudent;

drop table sudent;


create table student(stud_id int not null auto_increment,
name varchar(20),
rollno int,
primary key (stud_id));

desc student;

insert into student( name, rollno)
VALUES ('Fred', 25),
       ('sandrick', 22),
       ('fitty', 26),
       ('zippy', 28),
       ('maddy', 20);

select * from student;

create table Employees(id int not null auto_increment primary key,
last_name varchar(10) not null,
first_name varchar(10) not null,
middle_name varchar(10),
age int not null,
current_status varchar(50) not null default 'employed');

desc Employees;

CREATE TABLE IF NOT EXISTS `customer` (
  `CUST_CODE` varchar(6) NOT NULL,
  `CUST_NAME` varchar(40) NOT NULL,
  `CUST_CITY` varchar(35) DEFAULT NULL,
  `WORKING_AREA` varchar(35) NOT NULL,
  `CUST_COUNTRY` varchar(20) NOT NULL,
  `GRADE` decimal(10,0) DEFAULT NULL,
  `OPENING_AMT` decimal(12,2) NOT NULL,
  `RECEIVE_AMT` decimal(12,2) NOT NULL,
  `PAYMENT_AMT` decimal(12,2) NOT NULL,
  `OUTSTANDING_AMT` decimal(12,2) NOT NULL,
  `PHONE_NO` varchar(17) NOT NULL,
  `AGENT_CODE` varchar(6) DEFAULT NULL,
  KEY `CUSTCITY` (`CUST_CITY`),
  KEY `CUSTCITY_COUNTRY` (`CUST_CITY`,`CUST_COUNTRY`)
);


INSERT INTO `customer` (`CUST_CODE`, `CUST_NAME`, `CUST_CITY`, `WORKING_AREA`, `CUST_COUNTRY`, `GRADE`, `OPENING_AMT`, `RECEIVE_AMT`, `PAYMENT_AMT`, `OUTSTANDING_AMT`, `PHONE_NO`, `AGENT_CODE`) VALUES
('C00013', 'Holmes', 'London                             ', 'London', 'UK', '2', '6000.00', '5000.00', '7000.00', '4000.00', 'BBBBBBB', 'A003  '),
('C00001', 'Micheal', 'New York                           ', 'New York', 'USA', '2', '3000.00', '5000.00', '2000.00', '6000.00', 'CCCCCCC', 'A008  '),
('C00020', 'Albert', 'New York                           ', 'New York', 'USA', '3', '5000.00', '7000.00', '6000.00', '6000.00', 'BBBBSBB', 'A008  '),
('C00025', 'Ravindran', 'Bangalore                          ', 'Bangalore', 'India', '2', '5000.00', '7000.00', '4000.00', '8000.00', 'AVAVAVA', 'A011  '),
('C00024', 'Cook', 'London                             ', 'London', 'UK', '2', '4000.00', '9000.00', '7000.00', '6000.00', 'FSDDSDF', 'A006  '),
('C00015', 'Stuart', 'London                             ', 'London', 'UK', '1', '6000.00', '8000.00', '3000.00', '11000.00', 'GFSGERS', 'A003  '),
('C00002', 'Bolt', 'New York                           ', 'New York', 'USA', '3', '5000.00', '7000.00', '9000.00', '3000.00', 'DDNRDRH', 'A008  '),
('C00018', 'Fleming', 'Brisban                            ', 'Brisban', 'Australia', '2', '7000.00', '7000.00', '9000.00', '5000.00', 'NHBGVFC', 'A005  '),
('C00021', 'Jacks', 'Brisban                            ', 'Brisban', 'Australia', '1', '7000.00', '7000.00', '7000.00', '7000.00', 'WERTGDF', 'A005  '),
('C00019', 'Yearannaidu', 'Chennai                            ', 'Chennai', 'India', '1', '8000.00', '7000.00', '7000.00', '8000.00', 'ZZZZBFV', 'A010  '),
('C00005', 'Sasikant', 'Mumbai                             ', 'Mumbai', 'India', '1', '7000.00', '11000.00', '7000.00', '11000.00', '147-25896312', 'A002  '),
('C00007', 'Ramanathan', 'Chennai                            ', 'Chennai', 'India', '1', '7000.00', '11000.00', '9000.00', '9000.00', 'GHRDWSD', 'A010  '),
('C00022', 'Avinash', 'Mumbai                             ', 'Mumbai', 'India', '2', '7000.00', '11000.00', '9000.00', '9000.00', '113-12345678', 'A002  '),
('C00004', 'Winston', 'Brisban                            ', 'Brisban', 'Australia', '1', '5000.00', '8000.00', '7000.00', '6000.00', 'AAAAAAA', 'A005  '),
('C00023', 'Karl', 'London                             ', 'London', 'UK', '0', '4000.00', '6000.00', '7000.00', '3000.00', 'AAAABAA', 'A006  '),
('C00006', 'Shilton', 'Torento                            ', 'Torento', 'Canada', '1', '10000.00', '7000.00', '6000.00', '11000.00', 'DDDDDDD', 'A004  '),
('C00010', 'Charles', 'Hampshair                          ', 'Hampshair', 'UK', '3', '6000.00', '4000.00', '5000.00', '5000.00', 'MMMMMMM', 'A009  '),
('C00017', 'Srinivas', 'Bangalore                          ', 'Bangalore', 'India', '2', '8000.00', '4000.00', '3000.00', '9000.00', 'AAAAAAB', 'A007  '),
('C00012', 'Steven', 'San Jose                           ', 'San Jose', 'USA', '1', '5000.00', '7000.00', '9000.00', '3000.00', 'KRFYGJK', 'A012  '),
('C00008', 'Karolina', 'Torento                            ', 'Torento', 'Canada', '1', '7000.00', '7000.00', '9000.00', '5000.00', 'HJKORED', 'A004  '),
('C00003', 'Martin', 'Torento                            ', 'Torento', 'Canada', '2', '8000.00', '7000.00', '7000.00', '8000.00', 'MJYURFD', 'A004  '),
('C00009', 'Ramesh', 'Mumbai                             ', 'Mumbai', 'India', '3', '8000.00', '7000.00', '3000.00', '12000.00', 'Phone No', 'A002  '),
('C00014', 'Rangarappa', 'Bangalore                          ', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'AAAATGF', 'A001  '),
('C00016', 'Venkatpati', 'Bangalore                          ', 'Bangalore', 'India', '2', '8000.00', '11000.00', '7000.00', '12000.00', 'JRTVFDD', 'A007  '),
('C00011', 'Sundariya', 'Chennai                            ', 'Chennai', 'India', '3', '7000.00', '11000.00', '7000.00', '11000.00', 'PPHGRTS', 'A010  ');


desc customer;

select * from customer;

drop table cats;

CREATE TABLE cats
  (
     cat_id INT NOT NULL AUTO_INCREMENT,
     name   VARCHAR(100),
     breed  VARCHAR(100),
     age    INT,
     PRIMARY KEY (cat_id)
  );

INSERT INTO cats(name, breed, age)
VALUES ('Ringo', 'Tabby', 4),
       ('Cindy', 'Maine Coon', 10),
       ('Dumbledore', 'Maine Coon', 11),
       ('Egg', 'Persian', 4),
       ('Misty', 'Tabby', 13),
       ('George Michael', 'Ragdoll', 9),
       ('Jackson', 'Sphynx', 7);

select * from cats;

select name, age from cats;

select * from cats where breed='Tabby';
select cat_id from cats;
select name, breed from cats;
select name, age from cats where breed="Tabby";
select cat_id, age from cats where cat_id=age;
select cat_id as id, name from cats;

update cats set breed='shorthair' where breed='Tabby';
update cats set age=14 where name='Misty';
update cats set name='Jack' where name='Jackson';
update cats set breed='British Shorthair' where name='Ringo';
update cats set age=12 where breed='Maine Coon';

delete from cats where name='Egg';
delete from cats where age=4;

select * from cats;

create database shirts_db;

create table shirts(
    shirt_id int not null auto_increment primary key ,
    article varchar(20),
    color varchar(10),
    shirt_size varchar(2),
    last_worn int
                   )

desc shirts;

INSERT INTO shirts(article, color, shirt_size, last_worn) VALUES
('t-shirt', 'white', 'S', 10),
('t-shirt', 'green', 'S', 200),
('polo shirt', 'black', 'M', 10),
('tank top', 'blue', 'S', 50),
('t-shirt', 'pink', 'S', 0),
('polo shirt', 'red', 'M', 5),
('tank top', 'white', 'S', 200),
('tank top', 'blue', 'M', 15);
insert into shirts(article, color, shirt_size, last_worn)
values('polo shirt', 'purple', 'M', 50);

select * from shirts;
select article, color from shirts;
select article, color, shirt_size, last_worn from shirts where shirt_size='M';

update shirts set shirt_size='L' where article='polo shirt';
update shirts set last_worn=0 where last_worn=15;
update shirts set shirt_size='XS', color='off white' where color='white';

delete from shirts where last_worn=200;
delete from shirts where article='tank top';

CREATE TABLE books
    (
        book_id INT NOT NULL AUTO_INCREMENT,
        title VARCHAR(100),
        author_fname VARCHAR(100),
        author_lname VARCHAR(100),
        released_year INT,
        stock_quantity INT,
        pages INT,
        PRIMARY KEY(book_id)
    );

INSERT INTO books (title, author_fname, author_lname, released_year, stock_quantity, pages)
VALUES
('The Namesake', 'Jhumpa', 'Lahiri', 2003, 32, 291),
('Norse Mythology', 'Neil', 'Gaiman',2016, 43, 304),
('American Gods', 'Neil', 'Gaiman', 2001, 12, 465),
('Interpreter of Maladies', 'Jhumpa', 'Lahiri', 1996, 97, 198),
('A Hologram for the King: A Novel', 'Dave', 'Eggers', 2012, 154, 352),
('The Circle', 'Dave', 'Eggers', 2013, 26, 504),
('The Amazing Adventures of Kavalier & Clay', 'Michael', 'Chabon', 2000, 68, 634),
('Just Kids', 'Patti', 'Smith', 2010, 55, 304),
('A Heartbreaking Work of Staggering Genius', 'Dave', 'Eggers', 2001, 104, 437),
('Coraline', 'Neil', 'Gaiman', 2003, 100, 208),
('What We Talk About When We Talk About Love: Stories', 'Raymond', 'Carver', 1981, 23, 176),
("Where I'm Calling From: Selected Stories", 'Raymond', 'Carver', 1989, 12, 526),
('White Noise', 'Don', 'DeLillo', 1985, 49, 320),
('Cannery Row', 'John', 'Steinbeck', 1945, 95, 181),
('Oblivion: Stories', 'David', 'Foster Wallace', 2004, 172, 329),
('Consider the Lobster', 'David', 'Foster Wallace', 2005, 92, 343);

select * from books;
select author_fname, author_lname from books;

select concat(author_fname,' ' ,author_lname) as 'full name' from books;
select author_fname AS first, author_lname as last, concat(author_fname, ' ', author_lname) as full from books;
select concat(title,'-', author_fname,'-', author_lname) from books;
select concat_ws('-', title, author_fname, author_lname) from books;

select replace('Hello world', 'l', 'y');
select replace('cheese bread coffee milk', ' ', 'and ');
select replace(title, 'e', '3') from books;
select
       substring(
           replace(title, 'e', 3),
           1,
           10
           ) AS 'weird string'
from books;

select reverse('Hello World');
select reverse(author_fname) from books;
select concat('woof', reverse('woof'));
select concat(author_fname, reverse(author_fname)) from books;

select char_length('Hello World');
select author_lname, char_length(author_lname) from books;
select concat(author_lname, ' is ', char_length(author_lname), ' characters long')  from books;

select upper('Hello World');
select upper(title) from books;
select upper(concat(author_lname, ' is ', char_length(author_lname), ' characters long'))  from books;

select upper(reverse('Why does my cat look at me such hatred?'));
# select replace(concat('I',' ', 'like', ' ', 'cats'), '_');
select replace(title, ' ', '->') as title from books;
select author_lname as forward, reverse(author_lname) as backwards from books;
select upper(concat(author_fname,' ', author_lname)) as 'full name in caps' from books;
select concat(title, ' was released in ', released_year) as 'blurb' from books;
select title, char_length(title) as "character count" from books;
select
       concat(substring(title, 1, 10), '...') as 'short title',
       concat(author_lname,',', author_fname) as 'author',
       concat(stock_quantity, ' in stock') as 'quantity'
from books;

INSERT INTO books
    (title, author_fname, author_lname, released_year, stock_quantity, pages)
    VALUES ('10% Happier', 'Dan', 'Harris', 2014, 29, 256),
           ('fake_book', 'Freida', 'Harris', 2001, 287, 428),
           ('Lincoln In The Bardo', 'George', 'Saunders', 2017, 1000, 367);
select * from books;

select distinct author_lname from books;
select distinct released_year from books;
select distinct concat(author_fname, ' ', author_lname) from books;
select distinct author_fname, author_lname from books;

select author_lname from books order by author_lname;
select author_lname from books order by released_year;
select author_lname from books order by author_lname desc;
select title, released_year, pages from books order by released_year;
select title, author_fname, author_lname from books order by 1 desc;
select author_fname, author_lname from books order by author_lname, author_fname;

select  title from books limit 3;
select * from books limit 4;
select title, released_year from books order by released_year desc limit 3;
select title, released_year from books order by released_year desc limit 0,5;
select title from books limit 0, 7823423682;

select author_fname from books where author_fname like '%da%';
select author_fname from books where author_fname like 'da%';
select author_fname from books where author_fname like '%da';
select author_fname from books where author_fname like 'da';
select title, stock_quantity from books where stock_quantity like '%';
select title, stock_quantity from books where stock_quantity like '___';
select title, stock_quantity from books where stock_quantity like '__';
select title, stock_quantity from books where stock_quantity like '_';
select title, stock_quantity from books where title like '%\%%';
select title, stock_quantity from books where title like '%\_%';

select title from books where title like '%stories%';
select title, pages from books where pages order by 2 desc limit 1;
select title, released_year as summary from books order by released_year desc limit 3;
select title, author_lname from books where author_lname like '% %';
select title, released_year, stock_quantity from books order by stock_quantity limit 3;
select title, author_lname from books order by author_lname, title;
select upper(concat('my favourite author is ', author_fname,' ', author_lname, '!')) as yell from books order by author_lname;

select count(*) from books;
select count(distinct author_fname) from books;
select count(distinct author_lname) from books;
select count(title) from books where title like '%the%';

select author_lname, count(*) from books group by author_lname;
select author_fname, author_lname, count(*) from books group by author_lname;



