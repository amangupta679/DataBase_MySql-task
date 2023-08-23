create database aug22Assignment

/* create table orders */

create table orders(order_id int not null , order_date date null , customer_id int not null);
drop table orders;
create table customers(customer_id int not null , customer_phone varchar(12) null , customer_email text null);

create table orders_items(order_id int , item_id int );

create table items(item_id int , item_name varchar(100) , item_price numeric);

create table property(lead_name varchar(20),location text,budget float,gen_date date,property_type text);

create table product(product_id int primary key,product_name varchar(50),description text,price float,Category varchar(10));

create table supplier(supp_id int primary key,supp_name varchar(20),supp_contact int);

create table stock (stock_id int primary key  , product_id int  , foreign key (product_id) references product(product_id), quantity int  );

create table orders(order_id int primary key , product_id int , foreign key (product_id) references product(product_id),order_date date , Totalamount float );

insert into customers values(3246 , '2346' , 'ddfgwh@1234.com'),(3446 , '2366' , 'dgwh@1234.com');

select * from customers; 


/* create a signup table */

create table signup(user_id int primary key  , username text , passwoord varchar(10));

insert into Signup values(2343,'errg@gmail.com','56bgc'),(2562456,'gjfg.com','23errgyx'),(345,'qehqfdh@gmail.com','4567'),(550,'wrgnhwrtj@gmail.com','rgjwrj1223');


 select * from Signup;

/* 18 aug */
create table pratice(id int primary key,name varchar(50),dateofcreation datetime,addresses text); 

        create database aman ; 
	/* for backup */
 backup database aman to disk='C:\Database\backup.bak'; 

 	/* for restore */
 restore database aman from disk='C:\Database\backup.bak'; 
 
 /* create a table named registration */


create table Registration(user_id int primary key,createdOn datetime,mobile_no int);


 /* adding a new column in a table */

alter table Registration add username varchar(50);  

--for adding more than one column
alter table Registration add Gender char(1),Pan_No varchar(10);

--for changing the datatype
alter table Registration alter column addresses varchar(100);

--for droping the column
alter table Registration drop column addresses;
alter table Registration drop column Gender;

drop table Registration;

--task 2


--22-08-2023

-- incrrement 
create table incrementing(
id int identity(2,2)  primary key , 
name varchar(100)
)
drop table incrementing
insert into incrementing(name) values ('nitesh')
select * from incrementing

-- insert datatime with the defined format 

create table date_time( S_no int identity primary key , name text ,  date date , datetime datetime , smalldatetime smalldatetime )

insert into date_time values( 'aman gupta', '2023-03-11' , '2023-03-11 12:30:30 ' ,'2023-03-11 06:30:30'   )

insert into date_time values('gautam mitesh ', '2023-03-11' , '2023-03-11 12:30:30 ' ,'2023-03-11 06:30:30'   )
select * from date_time;

drop table date_time;

/* datetime

1 . Storage Size: Takes up 8 bytes of storage.

smalldatetime
1 . Storage Size: Takes up 4 bytes of storage.

datetime provides higher precision compared to `smalldatetime
allowing you to store and manipulate more accurate timestamps. However,
smalldatetime uses less storage space and can be suitable for cases where minute-level precision is sufficient
*/

-- timestamp  

create table time_stamp( S_no int identity(2,2) primary key , name text ,  date date , datetime datetime , smalldatetime smalldatetime , rowVersion timestamp)
insert into time_stamp(name,date,datetime,smalldatetime) values( 'aman gupta', '2023-03-11' , '2023-03-11 12:30:30 ' ,'2023-03-11 06:30:30'   )
SELECT * FROM time_stamp;

--OR 


CREATE TABLE EMPLOYEE5(
ID INT IDENTITY (1,1) PRIMARY KEY  , 
NAME VARCHAR(100) , 
AGE INT  
)

INSERT INTO EMPLOYEE5 VALUES('AMAN' , 12),('RAHUL' , 13),('RAH' , 13)

-- IT IS GIVING ALL DATA 
SELECT * FROM EMPLOYEE5

-- IT IS GIVING ONLY ID =1 ;
SELECT * FROM EMPLOYEE5 WHERE (ID=2 OR ID=3 OR ID=1)

DROP TABLE EMPLOYEE5



/* CREATE TABLE EMPLOYEE SALARY ATTENDENCE */

/*--------------------------------------------------------

CREATE TABLE Employee (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    department TEXT NOT NULL
);

INSERT INTO EMPLOYEE(ID , NAME , age  , department)
values(1 , 'aman ' , 23 , 'it'), 
(2, 'rahul ' , 24 , 'it') , 
(3 , 'ashif' , 23 , 'it'),
(4 , 'aditya' , 23 , 'it' )




CREATE TABLE Salary (
    id INTEGER PRIMARY KEY,
    employee_id INTEGER NOT NULL,
    salary REAL NOT NULL,
    date DATE NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

INSERT INTO salary(ID , employee_id , salary  , date)
values(1 , '123 ' , 32000 , '2023-03-11'), 
(2 , '789 ' , 32000 , '2023-03-12') , 
(3 , '345 ' , 32000 , '2023-03-13'),
(4 , '567 ' , 32000 , '2023-03-14' )


CREATE TABLE Attendance (
    id INTEGER PRIMARY KEY,
    employee_id INTEGER NOT NULL,
    date DATE NOT NULL,
    status TEXT NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
);


SELECT * FROM EMPLOYEE; 
SELECT * FROM SALARY ; 
SELECT * FROM Attendance;

----------------------------------------------------------------------*/

use aug22Assignment


/* CREATE TABLE EMPLOYEE SALARY ATTENDENCE */


CREATE TABLE Employee (
    id INTEGER PRIMARY KEY,
    name TEXT NOT NULL,
    age INTEGER NOT NULL,
    department TEXT NOT NULL
);

INSERT INTO EMPLOYEE(ID , NAME , age  , department)
values(1 , 'aman ' , 23 , 'it'), 
(2, 'rahul ' , 24 , 'it') , 
(3 , 'ashif' , 23 , 'it'),
(4 , 'aditya' , 23 , 'it' )




CREATE TABLE Salary (
    id INTEGER PRIMARY KEY,
    employee_id INTEGER NOT NULL,
    salary REAL NOT NULL,
    date DATE NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
);

INSERT INTO salary(ID , employee_id , salary  , date)
values(1 , '123 ' , 32000 , '2023-03-11'), 
(2 , '789 ' , 32000 , '2023-03-12') , 
(3 , '345 ' , 32000 , '2023-03-13'),
(4 , '567 ' , 32000 , '2023-03-14' )


CREATE TABLE Attendance (
    id INTEGER PRIMARY KEY,
    employee_id INTEGER NOT NULL,
    date DATE NOT NULL,
    status TEXT NOT NULL,
    FOREIGN KEY (employee_id) REFERENCES Employee(id)
);


SELECT * FROM EMPLOYEE; 
SELECT * FROM SALARY ; 
SELECT * FROM Attendance;



-- task is to show me the data who has the lowerst salary 

create table salary_orderedby(id int identity , name text  , salary money)
insert into salary_orderedby( name , salary )
values('aman' , 12),('rahul ' , 23), ('aditya' ,34) , ('abc' , 67) , ('aro' , 21);

select * from salary_orderedby;

select * from salary_orderedby order by salary asc
select * from salary_orderedby order by salary desc

-- null and not null names 

create table name(
id int identity(1,1) primary key , 
name varchar(100),
age int not null 
)

insert into name(name,age)values('aman',  100),
('hello', 200 ) , 
('hi', 300)
select * from name; 

insert into name(age)
values (100),
(200),
(300),
(400)
select * from  name where name is null and id=5 ; 
select * from name where name is not null ; 
select * from  name where  NOT ID=10  ; 

-- after lunch break 
--1. assignment one 

/* -------- BOOK STORE DATAMANAGEMENT SYSTEM  -------*/


/* CRATE A TABLE CUSTOMERS */

create table customerss (
customer_id int primary key, 
firstName text , 
lastName text , 
streetName varchar(50),
postalCode int  , 
province  varchar(50) , 
countary text  , 
phonenumber bigint 


)


insert into customerss values( 1, 'Aman' ,'Gupta' , 'D colony' , '5800001' ,'ffbfh'  , 'INDIA' , 7031001961 ),
( 2, 'RAHUL' ,'JHA' , 'E colony' , '23462' ,'ffbfh'  , 'INDIA' , 233462456245 ),
( 3, 'Aman' ,'Gupta' , 'F colony' , '24356' ,'ADDFB'  , 'INDIA' , 2457357 ),
( 4, 'Aman' ,'Gupta' , 'G colony' , '1346' ,'SFDB'  , 'INDIA' , 247457 ),
( 5, 'Aman' ,'Gupta' , 'H colony' , '31463' ,'SFGN'  , 'INDIA' , 257245747 ),
( 6, 'Aman' ,'Gupta' , 'I colony' , '23462' ,'FBA'  , 'INDIA' , 24572547 )


/* CRREATE THE TABLE ORDERSS*/

create table OrderItem(
orderId int primary key , 
customersId int  , 
orderDate date , 
subtotal int , 
shipping text , 
total int ,
Foreign key (orderId) references  customerss(customer_id)
)


insert into OrderItem(orderId , customersId , orderDate , subtotal , shipping , total)
values (1 , 213423 , '2023-05-17' ,235 , 'ffbwdff' , 34634 ),
(2 , 213423 , '2023-05-17' ,235 , 'ffbwdff' , 34634 ),
(3 , 213423 , '2023-05-17' ,235 , 'ffbwdff' , 34634 ),
(4 , 213423 , '2023-05-17' ,235 , 'ffbwdff' , 34634 ),
(5 , 213423 , '2023-05-17' ,235 , 'ffbwdff' , 34634 )






/* 	create a table  orderitem */


create table orderss (

OrderId int primary key  , 
book_id int , 
Quantity int , 
price money 
Foreign key (orderId) references  OrderItem(orderId)
);

INSERT INTO orderss(OrderId , book_id , Quantity , price)
VALUES(1 ,123 , 1345, 12361346 ),
(2 ,123 , 1345, 12361346 ),
(3 ,123 , 1345, 12361346 ),
(4 ,123 , 1345, 12361346 );

select * from orderss


/* create a table book */


create table book (
book_id int primary key , 
author_id int  , 
publisher_id int , 
title text ,
genre text , 
type text , 
publish_year date , 
price money  , 
condition text
Foreign key (book_id) references  orderss(orderId)


)

INSERT INTO BOOK (book_id , author_id , publisher_id , title , genre , type, publish_year , price , condition)
VALUES(1, 123 ,2352135 , 'BOLO JUBAN KESRI' , 'DONT KNOW' , 'READING' , '2023-11-03' , 2351235 , 'READYONLY'),
(2, 1283 , 2332135 ,'BOLO JUBAN KESRI' , 'DONT KNOW' , 'READING' , '2023-11-03' , 2351235 , 'READYONLY'),
(3, 1203 ,23352135 , 'BOLO JUBAN KESRI' , 'DONT KNOW' , 'READING' , '2023-11-03' , 2351235 , 'READYONLY'),
(4, 1263 , 235135 ,'BOLO JUBAN KESRI' , 'DONT KNOW' , 'READING' , '2023-11-03' , 2351235 , 'READYONLY')

/* create a table  PUBLISHERS  */


CREATE TABLE PUBLISHERS(
PUBLISHER_ID INT PRIMARY KEY,
COUNTARY TEXT , 
BOOK_ID INT , 
 FOREIGN KEY (publisher_id) REFERENCES book(book_id)
)

insert into PUBLISHERS(PUBLISHER_ID , COUNTARY , BOOK_ID )
values(1,'INDIA' , 1242 ),
(2,'INDIA' , 1242 ),
(3,'INDIA' , 1242 ),
(4,'INDIA' , 1242 )



/* create a table authors */


create table authors(author_id int primary key ,
firstname varchar(30) ,
lastname varchar(30) ,
book_id int 
 FOREIGN KEY (author_id) REFERENCES book(book_id)
)

INSERT INTO authors VALUES(1 , 'AMAN' , 'GUPTA' , 1234) ,
(2, 'AMAN' , 'GUPTA' , 1234),
(3 , 'AMAN' , 'GUPTA' , 1234),
(4 , 'AMAN' , 'GUPTA' , 1234)


/*  create a table inventory */


create table inventory (
book_id int primary key,
stockLevelUsed int , 
stockLevelNew int
FOREIGN KEY (book_id) REFERENCES book(book_id)
)

INSERT INTO INVENTORY VALUES (1 , 234 , 2353) , 
(2, 234 , 2353),
(3 , 234 , 2353),
(4 , 234 , 2353)


create database inventorys

use inventorys

/* -------- BOOK STORE DATAMANAGEMENT SYSTEM  -------*/


/* CRATE A TABLE CUSTOMERS */

create table customerss (
customer_id int primary key, 
firstName text , 
lastName text , 
streetName varchar(50),
postalCode int  , 
province  varchar(50) , 
countary text  , 
phonenumber bigint 
)


insert into customerss values( 1, 'Aman' ,'Gupta' , 'D colony' , '5800001' ,'ffbfh'  , 'INDIA' , 7031001961 ),
( 2, 'RAHUL' ,'JHA' , 'E colony' , '23462' ,'ffbfh'  , 'INDIA' , 233462456245 ),
( 3, 'Aman' ,'Gupta' , 'F colony' , '24356' ,'ADDFB'  , 'INDIA' , 2457357 ),
( 4, 'Aman' ,'Gupta' , 'G colony' , '1346' ,'SFDB'  , 'INDIA' , 247457 ),
( 5, 'Aman' ,'Gupta' , 'H colony' , '31463' ,'SFGN'  , 'INDIA' , 257245747 ),
( 6, 'Aman' ,'Gupta' , 'I colony' , '23462' ,'FBA'  , 'INDIA' , 24572547 )


/* CRREATE THE TABLE ORDERSS*/

create table OrderItem(
orderId int primary key , 
customersId int  , 
orderDate date , 
subtotal int , 
shipping text , 
total int ,
Foreign key (orderId) references  customerss(customer_id)
)


insert into OrderItem(orderId , customersId , orderDate , subtotal , shipping , total)
values (1 , 213423 , '2023-05-17' ,235 , 'ffbwdff' , 34634 ),
(2 , 213423 , '2023-05-17' ,235 , 'ffbwdff' , 34634 ),
(3 , 213423 , '2023-05-17' ,235 , 'ffbwdff' , 34634 ),
(4 , 213423 , '2023-05-17' ,235 , 'ffbwdff' , 34634 ),
(5 , 213423 , '2023-05-17' ,235 , 'ffbwdff' , 34634 )






/* 	create a table  orderitem */


create table orderss (

OrderId int primary key  , 
book_id int , 
Quantity int , 
price money 
Foreign key (orderId) references  OrderItem(orderId)
);

INSERT INTO orderss(OrderId , book_id , Quantity , price)
VALUES(1 ,123 , 1345, 12361346 ),
(2 ,123 , 1345, 12361346 ),
(3 ,123 , 1345, 12361346 ),
(4 ,123 , 1345, 12361346 );

select * from orderss


/* create a table book */


create table book (
book_id int primary key , 
author_id int  , 
publisher_id int , 
title text ,
genre text , 
type text , 
publish_year date , 
price money  , 
condition text
Foreign key (book_id) references  orderss(orderId)


)

INSERT INTO BOOK (book_id , author_id , publisher_id , title , genre , type, publish_year , price , condition)
VALUES(1, 123 ,2352135 , 'BOLO JUBAN KESRI' , 'DONT KNOW' , 'READING' , '2023-11-03' , 2351235 , 'READYONLY'),
(2, 1283 , 2332135 ,'BOLO JUBAN KESRI' , 'DONT KNOW' , 'READING' , '2023-11-03' , 2351235 , 'READYONLY'),
(3, 1203 ,23352135 , 'BOLO JUBAN KESRI' , 'DONT KNOW' , 'READING' , '2023-11-03' , 2351235 , 'READYONLY'),
(4, 1263 , 235135 ,'BOLO JUBAN KESRI' , 'DONT KNOW' , 'READING' , '2023-11-03' , 2351235 , 'READYONLY')

/* create a table  PUBLISHERS  */


CREATE TABLE PUBLISHERS(
PUBLISHER_ID INT PRIMARY KEY,
COUNTARY TEXT , 
BOOK_ID INT , 
 FOREIGN KEY (publisher_id) REFERENCES book(book_id)
)

insert into PUBLISHERS(PUBLISHER_ID , COUNTARY , BOOK_ID )
values(1,'INDIA' , 1242 ),
(2,'INDIA' , 1242 ),
(3,'INDIA' , 1242 ),
(4,'INDIA' , 1242 )



/* create a table authors */


create table authors(author_id int primary key ,
firstname varchar(30) ,
lastname varchar(30) ,
book_id int 
 FOREIGN KEY (author_id) REFERENCES book(book_id)
)

INSERT INTO authors VALUES(1 , 'AMAN' , 'GUPTA' , 1234) ,
(2, 'AMAN' , 'GUPTA' , 1234),
(3 , 'AMAN' , 'GUPTA' , 1234),
(4 , 'AMAN' , 'GUPTA' , 1234)


/*  create a table inventory */


create table inventory (
book_id int primary key,
stockLevelUsed int , 
stockLevelNew int
FOREIGN KEY (book_id) REFERENCES book(book_id)
)

INSERT INTO INVENTORY VALUES (1 , 234 , 2353) , 
(2, 234 , 2353),
(3 , 234 , 2353),
(4 , 234 , 2353)





      













