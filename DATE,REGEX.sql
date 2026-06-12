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


select count(*) from walmart_sales;

select sum(weekly_sales) from walmart_sales;

select avg(weekly_sales) from walmart_sales; 

select avg(temperature) from walmart_sales;

select max(weekly_sales) from walmart_sales;

select max(temperature) from walmart_sales;

select min(weekly_sales) from walmart_sales;

select min(temperature) from walmart_sales;

select count(*) as total_records,
sum(weekly_sales) as total_sales,
avg(weekly_sales) as average_sales,
max(weekly_sales) as highest_sales,
min(weekly_sales) as lowest_sales
from walmart_sales;

select sum(weekly_sales)
from walmart_sales
where holiday_flag = 1;

select Date, year(Date) as year
from walmart_sales
limit 10;

select now();

select current_date();

select current_time();
select datediff('2025-12-31','2025-01-01');

select Weekly_Sales, Holiday_Flag, datediff(sysdate(),Date) as datedifference from walmart_sales;

select date_format('2025-06-10','%d-%m-%Y');

select day(Date), Date from walmart_sales;
select month(Date), Date from walmart_sales;
select Year(Date), Date from walmart_sales;

select adddate('2026-06-02',interval 15 day);

select adddate('2026-06-02',interval 1 year);

select adddate('2026-06-02',interval 10 month);

select subdate('2025-06-10',interval 15 day);

select date_format('2025-06-10','%M');

select date_format('2025-06-10','%W');

select datediff('2025-12-31','2025-01-01');

select date_add('2025-06-10', interval 10 day);

select date_sub('2025-06-10', interval 10 day);

select date_format('2025-06-10','%d-%m-%Y');

use company_db;
use walmart_db;
select * from employee
where first_name regexp '^m';

select * from employee where first_name like '%a%' or first_name like '%r%';

select * from employee where first_name regexp '^m';

select * from employee where first_name regexp '[vwu]';

select * from employee where first_name regexp '[a-w]';

select * from employee where first_name regexp '[a-w]$';

select * from employee where first_name regexp 'ar';

select * from employee where first_name regexp 'john|eric';

