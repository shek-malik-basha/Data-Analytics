
use walmart_db;
select * from sales;

CREATE TABLE stores (
    store_id INT PRIMARY KEY,
    store_name VARCHAR(50),
    city VARCHAR(50)
);
 describe sales;
 
 CREATE TABLE sales_new (
    sale_id INT PRIMARY KEY,
    Store INT,
    Weekly_Sales DECIMAL(15,2),
    Holiday_Flag INT,
    Temperature DECIMAL(5,2)
);

INSERT INTO stores
VALUES
(1,'Walmart A', 'Calfornia'),
(2,'Walmart B', 'Brooklyn'),
(3,'Walmart C', 'New york');
create table sales_fk (
    sale_id int primary key,
    store_id int,
    weekly_sales decimal(15,2),

    foreign key (store_id)
    references stores(store_id)
);

insert into sales_fk
values
(101,1,150000);

Select * from stores,sales_fk;

alter table sales_fk 
add profit int;

alter table sales_fk
drop column profit;

desc sales_fk;

select * from actor;

use walmart_db;

describe sales_fk;
select * from stores;

create table employee (
    employee_id int primary key,
    first_name varchar(30),
    last_name varchar(30),
    age int,
    city varchar(30),
    gender varchar(10),
    state varchar(30)
);

insert into employee
values
(99980, 'John', 'Jones', 25, 'Hyderabad', 'male', 'Telangana'),
(99982, 'Mary', 'Jones', 23, 'bangalore', 'female', 'karnataka'),
(88232, 'Eric', 'Edwards', 28, 'chennai', 'male', 'tamil nadu'),
(88233, 'Mary Ann', 'Edwards', 24, 'mumbai', 'female', 'maharashtra'),
(98001, 'Ginger', 'Howell', 30, 'delhi', 'male', 'delhi'),
(92001, 'Sebastion', 'Smith', 26, 'kolkata', 'female', 'west bengal'),
(22322, 'Gus', 'Gary', 29, 'goa', 'male', 'goa'),
(32326, 'Mary Ann', 'May', 22, 'lucknow', 'female', 'uttar pradesh'),


select * from employee;

select first_name, city
from employee;

select * from employee
where age > 25;

select * from employee
where gender = 'male';
select * from employee
where city = 'hyderabad';

select * from employee
where gender = 'male'
and age > 25;

select * from employee
where city = 'hyderabad'
or city = 'bangalore';

select * from
employee where
first_name like 'p%';

select * from employee
where age between 24 and 30;

select *
from employee
where first_name like '%an%';

select * from employee
where city in ('hyderabad', 'bangalore', 'chennai');

truncate table employee;

insert into employee
values
(99980, 'John', 'Jones', 25, 'Hyderabad', 'male', 'Telangana'),
(99982, 'Mary', 'Jones', 23, 'bangalore', 'female', 'karnataka'),
(88232, 'Eric', 'Edwards', 28, 'chennai', 'male', 'tamil nadu'),
(88233, 'Mary Ann', 'Edwards', 24, 'mumbai', 'female', 'maharashtra'),
(98001, 'Ginger', 'Howell', 30, 'delhi', 'male', 'delhi'),
(92001, 'Sebastion', 'Smith', 26, 'kolkata', 'female', 'west bengal'),
(22322, 'Gus', 'Gary', 29, 'goa', 'male', 'goa'),
(32326, 'Mary Ann', 'May', 22, 'lucknow', 'female', 'uttar pradesh');

select * from employee
where first_name like '____'; 

create table employees_dml (
    employee_id int primary key,
    first_name varchar(30),
    last_name varchar(30),
    designation varchar(30),
    age int,
    salary decimal(10,2)
);

insert into employees_dml
values
(101, 'john', 'jones', 'manager', 35, 75000),
(102, 'mary', 'smith', 'analyst', 28, 50000),
(103, 'eric', 'edwards', 'developer', 30, 65000),
(104, 'ginger', 'howell', 'hr', 32, 55000),
(105, 'sebastion', 'smith', 'tester', 27, 45000),
(106, 'gus', 'gary', 'developer', 29, 62000),
(107, 'mary ann', 'may', 'analyst', 24, 48000),
(108, 'david', 'clark', 'manager', 40, 85000);

select * from employees_dml;

insert into employees_dml
values
(109, 'alex', 'brown', 'developer', 26, 58000);

update employees_dml
set salary = 80000
where employee_id = 101;

update employees_dml
set designation = 'tester'
where employee_id = 109;

update employees_dml
set designation = 'senior developer'
where employee_id = 103;

update employees_dml
set age = 31, salary = 70000
where employee_id = 106;

delete from employees_dml
where employee_id = 107;

delete from employees_dml
where designation = 'analyst';

SET SQL_SAFE_UPDATES = 0;

select * from employees_dml; 
