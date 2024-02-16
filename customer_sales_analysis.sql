#DATA CLEANING

#CHANGE COLUMNS NAMES

Alter table sales_data
RENAME Column CONTACTLASTNAME to lastname

Alter table sales_data
RENAME Column CONTACTFIRSTNAME to firstname

# Show The data for 2003

SELECT *
FROM sales_data s
WHERE YEAR_ID = 2003

# Total sales per product line

SELECT productline, sum(sales) as total_sales
FROM sales_data s
GROUP BY productline

# Total Sales for 2003 for each productline in the United States
With filtered_data as (
Select sum(sales) as revenue, productline
from sales_data
Where YEAR_ID = 2003
AND
Country = 'USA'
GROUP BY productline
)

Select productline, revenue
from filtered_data

# Total sales, Average sales, variance and standard deviation for productline
SELECT
productline
, sum(sales)
, avg(sales)
, var_pop(sales)
, stddev_pop(sales)
FROM
sales_data
group by
productline

# Retrieve product details (ProductCode, ProductName, MSRP, PriceEach) from the table, ordering the results in descending order based on the Manufacturers Suggested Retail Price (MSRP)

Select
Productcode
, Productline
, MSRP
, PRICEEACH
FROM
SALES_DATA
ORDER BY
MSRP DESC

# Difference between avg MSRP AND PRICE FOR each PRODUCT LINE

Select
Productline
, Round(AVG(MSRP)- AVG(PRICEEACH), 2) as markup_markdown
FROM
SALES_DATA
Group by
Productline

# The highest value of highest sales amount

SELECT * from sales_data
order by sales DESC
LIMIT 1

# Better than using since 'LIMIT' can be manipulated:
SELECT * from sales_data
WHERE sales = (SELECT MAX(sales) FROM sales_data)

# Count orders by status

SELECT distinct status
, count(status) as cnt_status
from sales_data
Group by status

# Sales for last quarter

SELECT year_id, ROUND(SUM(sales), 2) as revenue
from sales_data
where month_id = 4
GROUP BY YEAR_ID
order by year_ID DESC

# Products above average price

SELECT productline
, ROUND(avg(sales), 2) as avg_sales from
sales_data
group by productline
having avg_sales > (SELECT avg(sales) from sales_data)

# Average sales per Quarter

SELECT round(avg(sales), 2) as avg_sales,
CASE
when MONTH_ID BETWEEN 1 AND 3 THEN 1
when MONTH_ID BETWEEN 4 AND 6 THEN 2
when MONTH_ID BETWEEN 7 AND 9 THEN 3
when MONTH_ID BETWEEN 10 AND 12 THEN 4
end as Quarter
FROM
SALES_DATA
group BY Quarter

# Average sales per country and year

SELECT country ,year_ID, round(avg(sales), 2) as sales
from sales_data
Group by country, year_id
order by year_id


# Identify customers who have made orders on the same date as a Alpha Conganc
SELECT
DISTINCT CUSTOMERNAME
FROM
sales_data
WHERE
ORDERDATE IN (SELECT ORDERDATE FROM sales_data WHERE CUSTOMERNAME = 'Alpha Cognac')

# Rank of each products order quantity within each month, ordered by the quantity ordered in descending order

SELECT
PRODUCTCODE
, QUANTITYORDERED
, CUSTOMERNAME
, RANK() OVER(PARTITION BY PRODUCTCODE ORDER BY QUANTITYORDERED DESC) rankorder
FROM
sales_data
