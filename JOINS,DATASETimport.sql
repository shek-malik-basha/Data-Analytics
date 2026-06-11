create database company_db;

use company_db;

create table customers (
    customer_id int primary key,
    first_name varchar(30),
    last_name varchar(30),
    city varchar(30)
);

insert into customers
values
(101,'john','jones','hyderabad'),
(102,'mary','smith','bangalore'),
(103,'eric','edwards','chennai'),
(104,'ginger','howell','mumbai'),
(105,'sebastion','smith','delhi'),
(106,'gus','gary','goa'),
(107,'david','clark','kolkata'),
(108,'alex','brown','pune');

create table orders_info (
    order_id int primary key,
    customer_id int,
    product_name varchar(30),
    amount decimal(10,2),

    foreign key (customer_id)
    references customers(customer_id)
);

insert into orders_info
values
(1,101,'laptop',65000),
(2,102,'mobile',25000),
(3,103,'headphones',3000),
(4,104,'keyboard',1500),
(5,105,'monitor',12000),
(6,101,'mouse',800),
(7,106,'printer',9000),
(8,102,'tablet',18000);

select * from customers;

select * from orders_info;

select c.first_name, o.product_name from customers c
inner join orders_info o
on c.customer_id = o.customer_id;

select c.customer_id, c.first_name, o.amount from customers c
inner join orders_info o
on c.customer_id = o.customer_id;

select c.customer_id, o.product_name from customers c 
left join orders_info o on c.customer_id = o.customer_id;

select c.customer_id, o.product_name from customers c 
left join orders_info o on c.customer_id = o.customer_id
where o.order_id is null;

select c.customer_id, o.product_name from customers c 
right join orders_info o on c.customer_id = o.customer_id;

select c.customer_id, o.product_name, o.amount from customers c 
right join orders_info o on c.customer_id = o.customer_id;

select c.customer_id, o.product_name from customers c 
left outer join orders_info o on c.customer_id = o.customer_id
union 
select c.customer_id, o.product_name from customers c 
right join orders_info o on c.customer_id = o.customer_id;


create database sales;

use sales;

create table sales_data(
order_id int primary key,
ORDERNUMBER int,
sales int,
PRODUCTLINE varchar(60),
CUSTOMERNAME varchar(50),
country varchar(30)
);

use walmart_db;

show tables;

select * from sales_new
limit 10;

select count(*) from walmart_sales;

select * from walmart_sales limit 10;
select * from walmart_sales where store = 1;