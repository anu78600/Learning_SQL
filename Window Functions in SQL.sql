-- Window Functions in SQL

Select * From products;

-- Assign a unique row to each product within the same category.

Select product_name, category, price,
	Row_Number() Over(Partition By category Order By price Desc) AS row_num
From products;


Select product_name, category, price,
	Sum(price) Over(Partition By category Order By price Desc) AS running_total
From products;