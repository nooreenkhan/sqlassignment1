create database thursday;


use thursday;

create table Salesman(salesman_id  int primary key,name varchar(100),city varchar(100),commission decimal(5,2))

insert into  salesman(salesman_id,name,city,commission)values(5001,'James Hoog','New York',0.15);
insert into salesman(salesman_id,name,city,commission)values(5002,'Nail Knite','Paris',0.13);
insert into salesman(salesman_id,name,city,commission)values(5005,'Pit Alex','London',0.11);
insert into salesman(salesman_id,name,city,commission)values(5006,'Mc Lyon','Paris',0.14);
insert into salesman(salesman_id,name,city,commission)values(5007,'Paul Adam','Rome',0.13)
insert into salesman(salesman_id,name,city,commission)values(5003,'Lauson Hen','San Jose',0.12);

select * from salesman;

create table customer(customer_id  int primary key,cust_name varchar(50),city varchar(100),grade decimal(5,2),salesman_id int foreign key references Salesman(salesman_id) )
insert into customer values(3002,'Nick Rimando','New York',100,5001);
insert into customer values(3007,'Brad Davis','New York',200,5001);
insert into customer values(3005,' Graham Zusi','California',200,5002);
insert into customer values(3008,'Julian Green','London',300,5002);
insert into customer values(3004,'Fabian Johnson','Paris',300,5006);
insert into customer values(3009,'Geoff Cameron','Berlin',100,5003);
insert into customer values(3003,'Jozy Altidor','Moscow',200,5007);
insert into customer values(3001,'Brad Guzan','London',500,5005);

select *from customer


create table orders(ord_no int primary key,purch_amt decimal(8,2),ord_date date,customer_id int foreign key references customer(customer_id),salesman_id int foreign key references Salesman(salesman_id))
insert into orders values(70001,150.5,'2012-10-05',3005,5002);
insert into orders values(70009,270.65,'2012-09-10',3001,5005);
insert into orders values(70002,65.26,'2012-10-05',3002,5001);
insert into orders values(70004,110.5,'2012-08-17',3009,5003);
insert into orders values(70007,948.5,'2012-09-10',3005,5002);
insert into orders values(70005,2400.6,'2012-07-27',3007,5001);
insert into orders values(70008,5760,'2012-09-10',3002,5001);
insert into orders values(70010,1983.43,'2012-10-10',3004,5006);
insert into orders values(70003,2480.4,'2012-10-10',3009,5003);
insert into orders values(70012,250.45,'2012-06-27',3008,5002);
insert into orders values(70011,75.29,'2012-08-17',3003,5007);
insert into orders values(70013,3045.6,'2012-04-25',3002,5001);
select * from orders;





select * from salesman;
select name,commission from salesman;
select ord_date,salesman_id,ord_no,purch_amt from orders;
select name,city from salesman where city='paris';
select customer_id,cust_name,city,grade,salesman_id from customer where grade =200;
select ord_no,ord_date,purch_amt from orders where salesman_id=5001;

select avg (purch_amt) as 'avgamount' from orders;
select count (distinct salesman_id) from orders;
select count (*) from customer;
select max(purch_amt) as 'maxamount' from orders;
select city,max(grade) as 'max' from customer group by city;
select customer_id,ord_date,max(purch_amt) as 'purch_amt' from orders group by customer_id,ord_date;

