
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
CREATE TABLE sales_fk (
    sale_id INT PRIMARY KEY,
    store_id INT,
    weekly_sales DECIMAL(15,2),

    FOREIGN KEY (store_id)
    REFERENCES stores(store_id)
);

INSERT INTO sales_fk
VALUES
(101,1,150000);

Select * from stores,sales_fk;

