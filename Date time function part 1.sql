--Date and Time Functions part1

Select * From products;

-- Now() - Get Current Date and Time

Select Now() AS current_datetime;

-- Current_Date() - Get Current Date

Select Current_Date AS today_date;

Select added_date, (Current_Date - added_date) AS Days_difference
From products;

-- Extact part or the date (year, month, day) using Extract() from the added_date column.

Select product_name,
		Extract(Year From added_date) As year_added,
		Extract(Month From added_date) As month_added,
		Extract(Day From added_date) As day_added
From products;

-- Calculate age between dates. AGE()
Select product_name,
		Age(Current_date, added_date) As Age_since_added

From products;


-- TO_Char() Format Dates as strings

Select product_name,
	To_CHAR(added_date, 'DD-Mon-YYYY') AS age_formate
From products;




