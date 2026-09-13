-- Conditional Functions in sql.

Select * From products;

-- WE will categories product price in expensive, moderate, and cheap.

Select product_name, price,
	Case
		When price>= 50000 Then 'Expensive'
		When price>= 10000 AND price<=49999 Then 'Moderate Price'
		Else 'Affordable'
		End AS price_catergory
From products;

