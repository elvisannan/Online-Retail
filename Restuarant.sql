-- Create the menu table
CREATE TABLE Restaurant.menu (
    product_id INT,
    product_name VARCHAR(100),
    price DECIMAL(10, 2),
    calories INT,
    type VARCHAR(20)
);
-- Insert menu data
INSERT INTO Restaurant.menu (product_id, product_name, price, calories, type) VALUES
(1, 'Caesar Salad', 8.99, 250, 'Starter'),
(2, 'Garlic Bread', 5.49, 350, 'Starter'),
(3, 'Margherita Pizza', 12.99, 800, 'Main'),
(4, 'Grilled Salmon', 17.99, 600, 'Main'),
(5, 'Chocolate Cake', 6.99, 500, 'Dessert'),
(6, 'Cheesecake', 8.49, 450, 'Dessert'),
(7, 'Caprese Salad', 9.99, 300, 'Starter'),
(8, 'Bruschetta', 6.99, 400, 'Starter'),
(9, 'Pasta Carbonara', 14.49, 900, 'Main'),
(10, 'Beef Steak', 21.99, 750, 'Main'),
(11, 'Tiramisu', 7.99, 550, 'Dessert'),
(12, 'Fruit Salad', 5.99, 200, 'Dessert'),
(13, 'Chicken Wings', 10.99, 600, 'Starter'),
(14, 'Soup of the Day', 7.49, 350, 'Starter'),
(15, 'Spaghetti Bolognese', 13.99, 850, 'Main'),
(16, 'Vegetable Stir-Fry', 11.99, 500, 'Main'),
(17, 'Ice Cream Sundae', 6.49, 400, 'Dessert'),
(18, 'Key Lime Pie', 8.99, 450, 'Dessert'),
(19, 'Shrimp Cocktail', 12.49, 300, 'Starter'),
(20, 'Mozzarella Sticks', 8.99, 550, 'Starter'),
(21, 'Cola', 2.49, 150, 'Drink'),
(22, 'Lemonade', 2.99, 200, 'Drink'),
(23, 'Iced Tea', 2.99, 100, 'Drink'),
(24, 'Orange Juice', 3.49, 120, 'Drink'),
(25, 'Coffee', 2.99, 80, 'Drink'),
(26, 'Milkshake', 4.99, 450, 'Drink'),
(27, 'Smoothie', 4.49, 300, 'Drink'),
(28, 'Hot Chocolate', 3.99, 250, 'Drink'),
(29, 'Beer', 5.99, 200, 'Drink'),
(30, 'Wine', 8.99, 150, 'Drink');
-- Create the sales table
CREATE TABLE Restaurant.sales (
    customer_id VARCHAR(8),
    order_date DATE,
    product_id INT
);
-- Insert the Sales data
-- Insert 100 data entries into the sales table with mixed product IDs (ranging between 1 and 30)
INSERT INTO Restaurant.sales (customer_id, order_date, product_id) VALUES
('CUST001', '2024-01-01', 3),
('CUST002', '2024-01-01', 5),
('CUST003', '2024-01-02', 7),
('CUST004', '2024-01-02', 9),
('CUST005', '2024-01-03', 11),
('CUST006', '2024-01-03', 13),
('CUST007', '2024-01-04', 15),
('CUST008', '2024-01-04', 17),
('CUST009', '2024-01-05', 19),
('CUST010', '2024-01-05', 21),
('CUST011', '2024-01-06', 23),
('CUST012', '2024-01-06', 25),
('CUST013', '2024-01-07', 27),
('CUST014', '2024-01-07', 29),
('CUST015', '2024-01-08', 1),
('CUST016', '2024-01-08', 2),
('CUST017', '2024-01-09', 4),
('CUST018', '2024-01-09', 6),
('CUST019', '2024-01-10', 8),
('CUST020', '2024-01-10', 10),
('CUST021', '2024-01-11', 12),
('CUST022', '2024-01-11', 14),
('CUST023', '2024-01-12', 16),
('CUST024', '2024-01-12', 18),
('CUST025', '2024-01-13', 20),
('CUST026', '2024-01-13', 22),
('CUST027', '2024-01-14', 24),
('CUST028', '2024-01-14', 26),
('CUST029', '2024-01-15', 28),
('CUST030', '2024-01-15', 30),
('CUST031', '2024-01-16', 1),
('CUST032', '2024-01-16', 3),
('CUST033', '2024-01-17', 5),
('CUST034', '2024-01-17', 7),
('CUST035', '2024-01-18', 9),
('CUST036', '2024-01-18', 11),
('CUST037', '2024-01-19', 13),
('CUST038', '2024-01-19', 15),
('CUST039', '2024-01-20', 17),
('CUST040', '2024-01-20', 19),
('CUST041', '2024-01-21', 21),
('CUST042', '2024-01-21', 23),
('CUST043', '2024-01-22', 25),
('CUST044', '2024-01-22', 27),
('CUST045', '2024-01-23', 29),
('CUST046', '2024-01-23', 1),
('CUST047', '2024-01-24', 2),
('CUST048', '2024-01-24', 4),
('CUST049', '2024-01-25', 6),
('CUST050', '2024-01-25', 8),
('CUST051', '2024-01-26', 10),
('CUST052', '2024-01-26', 12),
('CUST053', '2024-01-27', 14),
('CUST054', '2024-01-27', 16),
('CUST055', '2024-01-28', 18),
('CUST056', '2024-01-28', 20),
('CUST057', '2024-01-29', 22),
('CUST058', '2024-01-29', 24),
('CUST059', '2024-01-30', 26),
('CUST060', '2024-01-30', 28),
('CUST061', '2024-01-31', 30),
('CUST062', '2024-01-31', 1),
('CUST063', '2024-02-01', 3),
('CUST064', '2024-02-01', 5),
('CUST065', '2024-02-02', 7),
('CUST066', '2024-02-02', 9),
('CUST067', '2024-02-03', 11),
('CUST068', '2024-02-03', 13),
('CUST069', '2024-02-04', 15),
('CUST070', '2024-02-04', 17),
('CUST071', '2024-02-05', 19),
('CUST072', '2024-02-05', 21),
('CUST073', '2024-02-06', 23),
('CUST074', '2024-02-06', 25),
('CUST075', '2024-02-07', 27),
('CUST076', '2024-02-07', 29),
('CUST077', '2024-02-08', 1),
('CUST078', '2024-02-08', 3),
('CUST079', '2024-02-09', 5),
('CUST080', '2024-02-09', 7),
('CUST081', '2024-02-10', 9),
('CUST082', '2024-02-10', 11),
('CUST083', '2024-02-11', 13),
('CUST084', '2024-02-11', 15),
('CUST085', '2024-02-12', 17),
('CUST086', '2024-02-12', 19),
('CUST087', '2024-02-13', 21),
('CUST088', '2024-02-13', 23),
('CUST089', '2024-02-14', 25),
('CUST090', '2024-02-14', 27),
('CUST091', '2024-02-15', 29),
('CUST092', '2024-02-15', 30),
('CUST093', '2024-02-16', 2),
('CUST094', '2024-02-16', 4),
('CUST095', '2024-02-17', 6),
('CUST096', '2024-02-17', 8),
('CUST097', '2024-02-18', 10),
('CUST098', '2024-02-18', 12),
('CUST099', '2024-02-19', 14),
('CUST100', '2024-02-19', 16);

-- Create members data
CREATE TABLE Restaurant.members (
    customer_id VARCHAR(8),
    gender VARCHAR(6),
    join_date DATE,
    food_allergies VARCHAR(15),
    city VARCHAR(50)
);
-- Insert members data
INSERT INTO Restaurant.members (customer_id, gender, join_date, food_allergies, city)
VALUES
('CUST001', 'Male', '2023-05-12', 'None', 'London'),
('CUST002', 'Female', '2022-09-20', 'Peanuts', 'Manchester'),
('CUST003', 'Male', '2024-01-05', 'Gluten', 'Birmingham'),
('CUST004', 'Female', '2023-11-14', 'Dairy', 'Leeds'),
('CUST005', 'Male', '2022-07-30', 'Shellfish', 'Glasgow'),
('CUST006', 'Female', '2023-03-17', 'None', 'Liverpool'),
('CUST007', 'Male', '2024-02-02', 'Soy', 'Bristol'),
('CUST008', 'Female', '2022-11-28', 'Eggs', 'Edinburgh'),
('CUST009', 'Male', '2023-08-10', 'Nuts', 'Sheffield'),
('CUST010', 'Female', '2024-04-09', 'None', 'Cardiff'),
('CUST011', 'Male', '2023-06-23', 'Fish', 'Belfast'),
('CUST012', 'Female', '2022-10-15', 'None', 'Newcastle'),
('CUST013', 'Male', '2024-03-05', 'Dairy', 'Aberdeen'),
('CUST014', 'Female', '2023-12-18', 'Gluten', 'Leicester'),
('CUST015', 'Male', '2022-08-05', 'Peanuts', 'York'),
('CUST016', 'Female', '2023-04-22', 'None', 'Brighton'),
('CUST017', 'Male', '2024-03-11', 'Soy', 'Southampton'),
('CUST018', 'Female', '2022-12-06', 'Shellfish', 'Portsmouth'),
('CUST019', 'Male', '2023-09-19', 'Nuts', 'Oxford'),
('CUST020', 'Female', '2024-05-14', 'None', 'Cambridge'),
('CUST021', 'Male', '2023-07-18', 'Peanuts', 'Swansea'),
('CUST022', 'Female', '2022-11-01', 'None', 'Exeter'),
('CUST023', 'Male', '2024-02-14', 'Soy', 'Norwich'),
('CUST024', 'Female', '2023-10-10', 'Dairy', 'Plymouth'),
('CUST025', 'Male', '2022-06-27', 'None', 'Bristol'),
('CUST026', 'Female', '2023-02-23', 'Gluten', 'Leeds'),
('CUST027', 'Male', '2024-01-08', 'Shellfish', 'Manchester'),
('CUST028', 'Female', '2022-08-31', 'None', 'Birmingham'),
('CUST029', 'Male', '2023-05-15', 'Nuts', 'Glasgow'),
('CUST030', 'Female', '2024-03-12', 'None', 'Liverpool'),
('CUST031', 'Male', '2023-09-27', 'Soy', 'Edinburgh'),
('CUST032', 'Female', '2022-12-23', 'Peanuts', 'Sheffield'),
('CUST033', 'Male', '2024-04-17', 'None', 'Cardiff'),
('CUST034', 'Female', '2023-12-13', 'Gluten', 'Belfast'),
('CUST035', 'Male', '2022-07-10', 'Dairy', 'Newcastle'),
('CUST036', 'Female', '2023-03-07', 'None', 'Aberdeen'),
('CUST037', 'Male', '2024-01-03', 'Shellfish', 'Leicester'),
('CUST038', 'Female', '2022-08-28', 'Nuts', 'York'),
('CUST039', 'Male', '2023-05-21', 'None', 'Brighton'),
('CUST040', 'Female', '2024-02-18', 'Soy', 'Southampton'),
('CUST041', 'Male', '2023-10-15', 'Peanuts', 'Portsmouth'),
('CUST042', 'Female', '2022-11-11', 'None', 'Oxford'),
('CUST043', 'Male', '2024-05-08', 'Gluten', 'Cambridge'),
('CUST044', 'Female', '2023-01-04', 'Shellfish', 'Swansea'),
('CUST045', 'Male', '2022-07-21', 'None', 'Exeter'),
('CUST046', 'Female', '2023-03-18', 'Soy', 'Norwich'),
('CUST047', 'Male', '2024-02-13', 'Nuts', 'Plymouth'),
('CUST048', 'Female', '2022-09-09', 'None', 'Bristol'),
('CUST049', 'Male', '2023-05-26', 'Dairy', 'Leeds'),
('CUST050', 'Female', '2024-03-23', 'None', 'Manchester'),
('CUST051', 'Male', '2023-11-19', 'Shellfish', 'Birmingham'),
('CUST052', 'Female', '2022-08-15', 'None', 'Glasgow'),
('CUST053', 'Male', '2024-04-10', 'Soy', 'Liverpool'),
('CUST054', 'Female', '2023-01-06', 'Peanuts', 'Edinburgh'),
('CUST055', 'Male', '2022-07-02', 'None', 'Sheffield'),
('CUST056', 'Female', '2023-03-28', 'Gluten', 'Cardiff'),
('CUST057', 'Male', '2024-01-22', 'Shellfish', 'Belfast'),
('CUST058', 'Female', '2022-09-18', 'None', 'Newcastle'),
('CUST059', 'Male', '2023-05-12', 'Nuts', 'Aberdeen'),
('CUST060', 'Female', '2024-03-08', 'None', 'Leicester'),
('CUST061', 'Male', '2023-11-03', 'Soy', 'York'),
('CUST062', 'Female', '2022-07-29', 'Peanuts', 'Brighton'),
('CUST063', 'Male', '2024-04-24', 'None', 'Southampton'),
('CUST064', 'Female', '2023-01-20', 'Gluten', 'Portsmouth'),
('CUST065', 'Male', '2022-08-16', 'Shellfish', 'Oxford'),
('CUST066', 'Female', '2023-04-11', 'None', 'Cambridge'),
('CUST067', 'Male', '2024-02-05', 'Dairy', 'Swansea'),
('CUST068', 'Female', '2022-09-01', 'None', 'Exeter'),
('CUST069', 'Male', '2023-05-28', 'Nuts', 'Norwich'),
('CUST070', 'Female', '2024-03-25', 'None', 'Plymouth'),
('CUST071', 'Male', '2023-11-21', 'Soy', 'Bristol'),
('CUST072', 'Female', '2022-07-17', 'Peanuts', 'Leeds'),
('CUST073', 'Male', '2024-04-12', 'None', 'Manchester'),
('CUST074', 'Female', '2023-01-10', 'Gluten', 'Birmingham'),
('CUST075', 'Male', '2022-08-05', 'Shellfish', 'Glasgow'),
('CUST076', 'Female', '2023-04-30', 'None', 'Liverpool'),
('CUST077', 'Male', '2024-02-25', 'Nuts', 'Edinburgh'),
('CUST078', 'Female', '2022-09-21', 'None', 'Sheffield'),
('CUST079', 'Male', '2023-05-17', 'Soy', 'Cardiff'),
('CUST080', 'Female', '2024-03-14', 'None', 'Belfast'),
('CUST081', 'Male', '2023-11-06', 'Peanuts', 'Newcastle'),
('CUST082', 'Female', '2022-07-03', 'None', 'Aberdeen'),
('CUST083', 'Male', '2024-04-28', 'Gluten', 'Leicester'),
('CUST084', 'Female', '2023-01-24', 'Shellfish', 'York'),
('CUST085', 'Male', '2022-08-19', 'None', 'Brighton'),
('CUST086', 'Female', '2023-05-12', 'Dairy', 'Southampton'),
('CUST087', 'Male', '2024-02-07', 'None', 'Portsmouth'),
('CUST088', 'Female', '2022-09-03', 'Nuts', 'Oxford'),
('CUST089', 'Male', '2023-05-21', 'None', 'Cambridge'),
('CUST090', 'Female', '2024-03-18', 'Soy', 'Swansea'),
('CUST091', 'Male', '2023-10-15', 'Peanuts', 'Exeter'),
('CUST092', 'Female', '2022-11-11', 'None', 'Norwich'),
('CUST093', 'Male', '2024-05-08', 'Gluten', 'Plymouth'),
('CUST094', 'Female', '2023-01-04', 'Shellfish', 'Bristol'),
('CUST095', 'Male', '2022-07-21', 'None', 'Leeds'),
('CUST096', 'Female', '2023-03-18', 'Soy', 'Manchester'),
('CUST097', 'Male', '2024-02-13', 'Nuts', 'Birmingham'),
('CUST098', 'Female', '2022-09-09', 'None', 'Glasgow'),
('CUST099', 'Male', '2023-05-26', 'Dairy', 'Liverpool'),
('CUST100', 'Female', '2024-03-23', 'None', 'Edinburgh');

--- Analysis Food Allerigies
Select
DISTINCT food_allergies,
count(food_allergies)
from members
Group by 1

---- Food allerigies by gender
Select distinct
gender,
food_allergies,
cnt_fa
FROM (SELECT
gender,
food_allergies,
    COUNT(*) OVER(PARTITION BY food_allergies,gender) AS cnt_fa
FROM
    members) as subquery

--- What is the most common order food based on cutsomers allergies

WITH Filtered_data as (Select
members.food_allergies,
menu.product_name,
COUNT(menu.product_name) as cnt_product_name,
DENSE_RANK() OVER(PARTITION BY members.food_allergies ORDER BY COUNT(menu.product_name) desc) AS Cnt_product_name_rank
from members
join sales
on members.customer_id = sales.customer_id
join menu
on menu.product_id = sales.product_id
GROUP BY 1,2)

Select
food_allergies,
product_name,
cnt_product_name,
Cnt_product_name_rank
from
Filtered_data
WHERE Cnt_product_name_rank = 1 AND food_allergies NOT IN ("none")


-- Analysis of Calories intake
-- Average calories intake by gender

SELECT members.gender,
round(AVG(menu.calories))as average_calories
from
members
JOIN
sales
ON members.customer_id = sales.customer_id
JOIN
menu
ON menu.product_id = sales.product_id
GROUP BY 1
-- TOP 3 Calories intake location

SELECT members.city,
sum(menu.calories) as total_calories
from
members
JOIN
sales
ON members.customer_id = sales.customer_id
JOIN
menu
ON menu.product_id = sales.product_id
GROUP BY 1
ORDER BY total_calories desc
LIMIT 3

-- If calories are starts with 2 then times price by 1.5 if it starts with 5 times price by 2 on the menu
With points as(Select *,
CASE
WHEN calories LIKE '2%' THEN price * 1.5
WHEN calories Like '5%' THEN price * 2
ELSE price * 1
END AS pointsmultiplier
FROM menu)

Select menu.product_name, SUM(p.pointsmultiplier) as multiplier
FROM points as p
JOIN menu
ON menu.product_id = p.product_id
group by 1

-- Common product name for people that bought after the became a member

WITH memebr_filtered as (SELECT
menu.product_name,
COUNT(product_name) as cnt_product_name,
RANK() OVER (ORDER BY COUNT(menu.product_name) DESC) AS rank_cnt_product_name
from members
join sales
on members.customer_id = sales.customer_id
join menu
on menu.product_id = sales.product_id
WHERE members.join_date < sales.order_date
GROUP BY 1
Order by cnt_product_name DESC)

SELECT product_name,
cnt_product_name
rank_cnt_product_name
FROM
memebr_filtered
WHERE rank_cnt_product_name = 1

-- Difference between price by price
WITH filetered_city as (SELECT city,
MIN(PRICE) as min_price,
MAX(PRICE) as max_price
FROM sales
JOIN members
ON sales.customer_id = members.customer_id
JOIN menu
ON menu.product_id = sales.product_id
GROUP BY 1)

SELECT
city,
(max_price - min_price) as difference
from
filetered_city
ORDER BY
difference desc
