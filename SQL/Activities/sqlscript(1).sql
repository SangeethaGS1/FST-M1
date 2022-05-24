REM   Script: activity 1 to 9
REM   activities

CREATE TABLE Customers ( 
    CustomerID int, 
    CustomerName varchar2(52), 
    ContactName varchar2(32), 
    Address varchar2(255), 
    City varchar2(50), 
    PostalCode varchar2(20), 
    Country varchar2(20) 
);

create table salesman( 
salesman_id int NOT NULL, 
salesman_name varchar2(20), 
salesman_city varchar2(20), 
commission int);

CREATE TABLE Customers ( 
    CustomerID int, 
    CustomerName varchar2(52), 
    ContactName varchar2(32), 
    Address varchar2(255), 
    City varchar2(50), 
    PostalCode varchar2(20), 
    Country varchar2(20) 
);

INSERT INTO Customers (CustomerName, ContactName, Address, City, PostalCode, Country) 
VALUES ('Cardinal', 'Tom B. Erichsen', 'Skagen 21', 'Stavanger', '4006', 'Norway');

create table salesman( 
salesman_id int NOT NULL, 
salesman_name varchar2(20), 
salesman_city varchar2(20), 
commission int);

desc salesman


Insert ALL into salesman values(5001,'James Hoog','New York',15) 
(5002,'Nail Knite','Paris',13) 
(5005,'Pit Alex','London',11) 
(5006,'McLyon','Paris',14) 
(5007,'Paul Adam','Rome',13) 
(5003,'Lauson Hen','San Jose',12);

Insert ALL into salesman values(5001,'James Hoog','New York',15) 
(5002,'Nail Knite','Paris',13) 
(5005,'Pit Alex','London',11) 
(5006,'McLyon','Paris',14) 
(5007,'Paul Adam','Rome',13) 
(5003,'Lauson Hen','San Jose',12) 
select 1 from dual;

select * from salesman;

Insert ALL into salesman values (5001,'James Hoog','New York',15) 
into salesman values(5002,'Nail Knite','Paris',13) 
into salesman values(5005,'Pit Alex','London',11) 
into salesman values(5006,'McLyon','Paris',14) 
into salesman values(5007,'Paul Adam','Rome',13) 
into salesman values(5003,'Lauson Hen','San Jose',12) 
select 1 from dual;

select * from salesman;

select salesman_id,salesman_city from salesman;

select * from salesman where salesman_city='PARIS';

select * from salesman where salesman_city='Paris';

select salesman_id,commission from salesman where salesman_name='Paul Adam';

Alter table salesman  
add grade int;

update salesman set grade=100;

select * form salesman;

create table salesman( 
salesman_id int NOT NULL, 
salesman_name varchar2(20), 
salesman_city varchar2(20), 
commission int);

desc salesman


Insert ALL into salesman values (5001,'James Hoog','New York',15) 
into salesman values(5002,'Nail Knite','Paris',13) 
into salesman values(5005,'Pit Alex','London',11) 
into salesman values(5006,'McLyon','Paris',14) 
into salesman values(5007,'Paul Adam','Rome',13) 
into salesman values(5003,'Lauson Hen','San Jose',12) 
select 1 from dual 
 
 
select * from salesman;

select salesman_id,salesman_city from salesman;

select * from salesman where salesman_city='Paris';

select salesman_id,commission from salesman where salesman_name='Paul Adam';

Alter table salesman  
add grade int 
 
update salesman set grade=100 
 
select * from salesman;

select * from salesman;

update salesman set grade=200 where SALESMAN_CITY='Rome';

select * from salesman;

update salesman set grade=300 where salesman_name='James Hoog';

update salesman set salesman_name='Pierre' where salesman_name='McLyon';

select * from salesman;

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select distinct salesman_id from orders ;

select order_no from orders order by order_date;

select order_no from orders order by purchase_amount DESC;

select * from orders where purchase_amount < 500;

select * from orders where purchase_amount between 1000 and 2000;

select distinct salesman_id from orders  
select order_no,order_date from orders order by order_date 
select order_no,purchase_amount from orders order by purchase_amount DESC 
select * from orders where purchase_amount < 500 
select * from orders where purchase_amount between 1000 and 2000;

select sum(purchase_amount) from orders;

select sum(purchase_amount) from orders;

select avg(purchase_amount) from orders;

select max(purchase_amount) from orders;

select min(purchase_amount) from orders;

select count(*)from orders;

select sum(purchase_amount)as total_amount from orders;

select avg(purchase_amount) as average_amnt from orders;

select max(purchase_amount) as max_amnt from orders;

select min(purchase_amount) as min_amnt from orders;

select count(*) as salesman_count from orders;

select count(distinct salesman_id) as salesman_count from orders;

select * from orders;

select customer_id,salesman_id,max(purchase_amount from orders group by customer_id,salesman_id;

select customer_id,salesman_id,max(purchase_amount) from orders group by customer_id,salesman_id 
;

select customer_id,max(purchase_amount) from orders group by customer_id;

select * from orders;

select max(purchase_amount) as "total amount" from orders where order_date='2012-08-17' group by customer_id,salesman_id;

select max(purchase_amount) as "total amount" from orders where order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') group by customer_id,salesman_id;

select salesman_id,order_date,max(purchase_amount) as "max amount" from orders where order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') group by salesman_id,order_date;

select * from orders;

select salesman_id,order_date,max(purchase_amount) as "max amount" from orders where order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') group by salesman_id,order_date;

select * from orders;

select * from orders;

select customer_id,max(purchase_amount) from orders group by customer_id;

create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

INSERT ALL 
    INTO customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001) 
    INTO customers VALUES (3007, 'Brad Davis', 'New York', 200, 5001) 
    INTO customers VALUES (3005, 'Graham Zusi', 'California', 200, 5002) 
    INTO customers VALUES (3008, 'Julian Green', 'London', 300, 5002) 
    INTO customers VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006) 
    INTO customers VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003) 
    INTO customers VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007) 
    INTO customers VALUES (3001, 'Brad Guzan', 'London', 300, 5005) 
SELECT 1 FROM DUAL;

select d.salesman_name,c.customer_name 
inner join salesman as d, customers as c 
where d.salesman_id = c.salesman_id ;

select d.salesman_name,c.customer_name from salesman as d 
inner join customers as c 
on d.salesman_id = c.salesman_id ;

create table salesman( 
salesman_id int NOT NULL, 
salesman_name varchar2(20), 
salesman_city varchar2(20), 
commission int);

desc salesman


Insert ALL into salesman values (5001,'James Hoog','New York',15) 
into salesman values(5002,'Nail Knite','Paris',13) 
into salesman values(5005,'Pit Alex','London',11) 
into salesman values(5006,'McLyon','Paris',14) 
into salesman values(5007,'Paul Adam','Rome',13) 
into salesman values(5003,'Lauson Hen','San Jose',12) 
select 1 from dual 
 
 
select * from salesman;

select salesman_id,salesman_city from salesman;

select * from salesman where salesman_city='Paris';

select salesman_id,commission from salesman where salesman_name='Paul Adam';

Alter table salesman  
add grade int 
 
update salesman set grade=100 
 
select * from salesman;

update salesman set grade=200 where SALESMAN_CITY='Rome' 
update salesman set grade=300 where salesman_name='James Hoog' 
update salesman set salesman_name='Pierre' where salesman_name='McLyon' 
 
select * from salesman;

create table orders( 
    order_no int primary key, purchase_amount float, order_date date, 
    customer_id int, salesman_id int);

INSERT ALL 
    INTO orders VALUES(70001, 150.5, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3005, 5002)  
    INTO orders VALUES(70009, 270.65, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3001, 5005) 
    INTO orders VALUES(70002, 65.26, TO_DATE('2012/10/05', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70004, 110.5, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70007, 948.5, TO_DATE('2012/09/10', 'YYYY/MM/DD'), 3005, 5002) 
    INTO orders VALUES(70005, 2400.6, TO_DATE('2012/07/27', 'YYYY/MM/DD'), 3007, 5001) 
    INTO orders VALUES(70008, 5760, TO_DATE('2012/08/15', 'YYYY/MM/DD'), 3002, 5001) 
    INTO orders VALUES(70010, 1983.43, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3004, 5006) 
    INTO orders VALUES(70003, 2480.4, TO_DATE('2012/10/10', 'YYYY/MM/DD'), 3009, 5003) 
    INTO orders VALUES(70012, 250.45, TO_DATE('2012/06/27', 'YYYY/MM/DD'), 3008, 5002) 
    INTO orders VALUES(70011, 75.29, TO_DATE('2012/08/17', 'YYYY/MM/DD'), 3003, 5007) 
    INTO orders VALUES(70013, 3045.6, TO_DATE('2012/04/25', 'YYYY/MM/DD'), 3002, 5001) 
SELECT 1 FROM DUAL;

select distinct salesman_id from orders  
select order_no,order_date from orders order by order_date 
select order_no,purchase_amount from orders order by purchase_amount DESC 
select * from orders where purchase_amount < 500 
select * from orders where purchase_amount between 1000 and 2000 
 
 
--Activity 7 
select sum(purchase_amount)as total_amount from orders;

select avg(purchase_amount) as average_amnt from orders;

select max(purchase_amount) as max_amnt from orders;

select min(purchase_amount) as min_amnt from orders;

select count(distinct salesman_id) as salesman_count from orders;

select * from orders;

select customer_id,max(purchase_amount) from orders group by customer_id 
select salesman_id,order_date,max(purchase_amount) as "max amount" from orders where order_date=To_DATE('2012/08/17', 'YYYY/MM/DD') group by salesman_id,order_date 
select customer_id,order_date,max(purchase_amount) as "max amount" from orders group by customer_id,order_date where max(purchase_amonut) in (2030, 3450, 5760, 6000)  
 
 
--Activity 9 
-- Create the customers table 
create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

INSERT ALL 
    INTO customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001) 
    INTO customers VALUES (3007, 'Brad Davis', 'New York', 200, 5001) 
    INTO customers VALUES (3005, 'Graham Zusi', 'California', 200, 5002) 
    INTO customers VALUES (3008, 'Julian Green', 'London', 300, 5002) 
    INTO customers VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006) 
    INTO customers VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003) 
    INTO customers VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007) 
    INTO customers VALUES (3001, 'Brad Guzan', 'London', 300, 5005) 
SELECT 1 FROM DUAL;

select d.salesman_name,c.customer_name from salesman d 
inner join customers c 
on d.salesman_id = c.salesman_id  
 
 
 
 
 
 
 
;

select d.salesman_name,c.customer_name from salesman d 
inner join customers c 
on d.salesman_id = c.salesman_id ;

select * from customers;

INSERT ALL 
    INTO customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001) 
    INTO customers VALUES (3007, 'Brad Davis', 'New York', 200, 5001) 
    INTO customers VALUES (3005, 'Graham Zusi', 'California', 200, 5002) 
    INTO customers VALUES (3008, 'Julian Green', 'London', 300, 5002) 
    INTO customers VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006) 
    INTO customers VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003) 
    INTO customers VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007) 
    INTO customers VALUES (3001, 'Brad Guzan', 'London', 300, 5005) 
SELECT 1 FROM DUAL;

create table customers ( 
    customer_id int primary key, customer_name varchar(32), 
    city varchar(20), grade int, salesman_id int);

INSERT ALL 
    INTO customers VALUES (3002, 'Nick Rimando', 'New York', 100, 5001) 
    INTO customers VALUES (3007, 'Brad Davis', 'New York', 200, 5001) 
    INTO customers VALUES (3005, 'Graham Zusi', 'California', 200, 5002) 
    INTO customers VALUES (3008, 'Julian Green', 'London', 300, 5002) 
    INTO customers VALUES (3004, 'Fabian Johnson', 'Paris', 300, 5006) 
    INTO customers VALUES (3009, 'Geoff Cameron', 'Berlin', 100, 5003) 
    INTO customers VALUES (3003, 'Jozy Altidor', 'Moscow', 200, 5007) 
    INTO customers VALUES (3001, 'Brad Guzan', 'London', 300, 5005) 
SELECT 1 FROM DUAL;

-- activity 9
select * from orders;
select * from customers;
select * from salesman;


