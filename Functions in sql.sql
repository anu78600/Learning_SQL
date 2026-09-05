-- Functions in Sql.


Drop Table IF Exists products;

Create Table products (
product_id Serial Primary Key,
product_name Varchar(100),
category Varchar(50),
price Numeric(10,2),
quantity Int,
added_date Date,
discount_rate Numeric(5,2)
);

Insert Into products(product_name, category, price, quantity, added_date, discount_rate)
Values
('Laptop', 'Electronic', 75000.50, 10,'2025-01-15', 10.00),
('Smartphones', 'Electronic', 50000.50, 25,'2025-01-25', 5.00),
('Headphones', 'Accessories', 1500.70, 10,'2025-05-15', 10.00),
('Office Chair', 'Electronic', 75000.50, 10,'2025-03-20', 10.00),
('Desktop', 'Electronic', 75000.50, 10,'2025-01-15', 10.00),
('Lights', 'Accessories', 1000.50, 10,'2025-07-30', 15.00);

Select * From products;


-- Find Total Quanity of all product

Select Sum(quantity) As total_quantity
From products;


Select Sum(quantity) As total_quantity_elec
From products
Where category='Electronic' And price< 5000;

-- Total Number of products.

Select Count(*) As total_products
From products;

-- Count with certain conditions

Select Count (*) As product_name_1
From products
Where product_name Like '%top';



-- Average Price funtion


Select Avg(price) As average_price
From products;

-- Average price with conditions.

Select Avg(price) As average_price
From products
Where category='Accessories' Or Price> 20000;


Select * From products;


-- Maximum function and minimum Functions.

Select Max(price) As max_price, 
	Min(price) As min_price
From products;

