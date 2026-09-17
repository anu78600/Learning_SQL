Select * From products;

Alter Table products
Add column discount_price Numeric(10,2);

Update products
Set discount_price = Null
Where product_name IN('Laptop','Office Chair');

Update products
Set discount_price = price*0.9
Where product_name Not IN('Laptop','Office Chair');

-- coalesce function for handling null values.

Select product_name,
	Coalesce(discount_price, price) AS final_price
From products;