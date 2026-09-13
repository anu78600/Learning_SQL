-- Date and Time Function part 2.

--Date_Part() Function 
-- Extract the day of the week from added_date.
-- dow means day of week. agr sunday h to 0, and so on......
Select product_name, added_date,
		Date_Part('dow', added_date)
			AS day_of_week
From products;


-- Date_Trunc() Function.
-- Truncate added_date to the start of the month.

Select product_name, added_date,
		Date_Trunc('month',added_date) AS month_start
From products;


-- Interval - add or subtract Time Intervals
-- Add 6 months to the added_date.

Select product_name, added_date,
		added_date + Interval '6 days' AS new_date

From products;


-- Current_Time() - Get Current Time
-- Retrive only the current time

Select Current_Time AS Current_Time1;


-- To_date()- convert string to date

Select To_Date('28-11-2024','DD-MM-YYYY') AS converted_date;
