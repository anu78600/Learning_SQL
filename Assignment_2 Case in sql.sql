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

-- Assignment - Categories quanity in stock wise, above 10 in stock, 5to9, limited stock, else, out of stock.

Select product_name, quantity,
		Case 
			When quantity>= 11 Then 'In Stock'
			When quantity>= 5 And quantity<=10 Then 'Limited Stock'
			Else 'Out of Stock'
			End AS stock_status
From products;

-- Assignment - Check if the category name contains 'Electronics Item' or 'Furniture Item' or 'Accessory Item' using like

Select product_name, category,
		Case
			When category Like 'Electronic%' Then 'Electronic Item'
			When category LIke 'Accessories%' Then 'Accessory Item'
			Else 'Furniture Item'
			End AS category_type
From products;