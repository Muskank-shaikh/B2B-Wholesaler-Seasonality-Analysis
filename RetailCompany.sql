create database retailcompany;
use retailcompany;

-- counting rows
select 
count(*)
from retail_data;



-- converting date format
SELECT 
    date,
    STR_TO_DATE(date, '%m/%d/%Y') AS order_date_converted
FROM retail_data
LIMIT 20;

set sql_safe_updates = 0;

UPDATE retail_data
SET date = STR_TO_DATE(date, '%m/%d/%Y');

alter table retail_data
modify column Date date;

select date from retail_data;
ALTER TABLE retail_data
CHANGE `Product Category` product_category VARCHAR(255),
CHANGE `Total Amount` total_amount DECIMAL(10,2),
CHANGE `Customer ID` customer_id INT,
change `Transaction ID` transaction_id int,
change `Price per unit` price double,
change `Total Amount` amount double;


-- unique wholesalers via product category
select 
`product category`,
count(distinct 'customer id') as wholesalers_count
from retail_data
group by `product category`
order by wholesalers_count desc;


select * from retail_data;

-- purchase of wholesalers 
select `Customer ID`, count(distinct `product category`),
min(date) as first_purchase,
max(date) as last_purchase,
datediff(curdate(),max(date)) as days_since_last_purchase
from retail_data
group by `Customer ID`, `product category`
order by days_since_last_purchase desc
limit 10;

-- wholesalers buying from multiple category
select `customer id`,
count( `product category`) as category_count
from retail_data
group by  `customer id`
having category_count >1 ;

-- low quantity buyers
select `customer id`,
round(avg(quantity),2) as avg_quantity,
sum(quantity) as total_quantity
from retail_data
group by  `customer id`
having avg_quantity < (select avg(quantity) from retail_data)
order by avg_quantity desc;

-- product category creating risk
select `product category`,
count(distinct `customer id`) as wholesalers,
sum(quantity) as total_quantity
from retail_data
group by `product category`
order by total_quantity desc;

-- bulk wholesaler buyers
SELECT 
    `customer id`,
    COUNT(*) AS total_orders,
    SUM(`total amount`) AS total_spend
FROM retail_data
GROUP BY `customer id`
ORDER BY total_orders DESC
LIMIT 10;

SELECT 
    `customer id`,
    COUNT(DISTINCT `product category`) AS category_count
FROM retail_data
GROUP BY  `customer id`
HAVING COUNT(DISTINCT `product category`) = 1;





