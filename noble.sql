create database onlinebookstore;

use onlinebookstore;

create table authors (
author_id int primary key,
author_name varchar(20),
country varchar(15)
);

create table books (
book_id int primary key,
title varchar(25),
author_id int,
price decimal (10,2),
publication_year year,
FOREIGN KEY (author_id) REFERENCES authors(author_id)
);

create table orders(
order_id int primary key,
book_id int,
customer_name varchar(25),
order_date date,
foreign key (book_id) references books(book_id)
);

insert into authors 
values (1,'Noble','INDIA');
insert into authors 
values (2,'Roshan','UK');
insert into authors 
values (3,'Abraham','IRELAND');
insert into authors 
values (4,'Steeve','AUSTRALIA');
insert into authors 
values (5,'SK','AMERICA');

insert into books
values (101,'YESHUA IS GOD',1,0,2030);
insert into books
values (102,'WISDOM',2,200,2027);
insert into books
values (103,'LOVE',3,1000,2025);
insert into books
values (104,'ATHEIST',4,500,2028);
insert into books
values (105,'PART TIME JOB',5,2000,2024);

insert into orders 
values (201,102,'Daniel','2040-12-27');
insert into orders 
values (202,101,'Jaison','2041-07-07');
insert into orders 
values (203,103,'Jeril','2042-10-20');
insert into orders 
values (204,104,'Jithin','2043-5-15');
insert into orders 
values (205,105,'Pranav','2044-02-13');

select * from authors;

select * from books;

select* from orders;

alter table books
add column  genre varchar(25);

UPDATE books
SET genre = 'LIFE'
WHERE book_id = 101;
UPDATE books
SET genre = 'SCIENCE'
WHERE book_id = 102;
UPDATE books
SET genre = 'FICTION'
WHERE book_id = 103;
UPDATE books
SET genre = 'NONSENSE'
WHERE book_id = 104;
UPDATE books
SET genre = 'FANTASY'
WHERE book_id = 105;

alter table orders
add column  quantity int;

UPDATE orders
SET quantity = 5
WHERE order_id = 201;
UPDATE orders
SET quantity = 50
WHERE order_id = 202;
UPDATE orders
SET quantity = 500
WHERE order_id = 203;
UPDATE orders
SET quantity = 57
WHERE order_id = 204;
UPDATE orders
SET quantity = 27
WHERE order_id = 205;

select * from books;

select *from orders;

select * from 
books inner join authors
where books.author_id=authors.author_id;

select * from
orders inner join books
where orders.book_id=books.book_id;