-- String Functions in SQL
Select * From products;

-- get all the categories in upper case

Select Upper(category) As Catergory_capital
From products;

-- get all the categories in lower case

Select Lower(category) As Catergory_lower
From products;

-- want to join the product name and category text with hypen.

Select Concat(product_name,'-',category) AS product_details
From products;

-- Extract the first five characters from product name.

Select Substring(product_name,1,5) AS extract_name
From products;

-- Count length

Select product_name, Length(product_name) AS count_of_char
From products;

-- Remove leading and trailing spaces from string

Select Trim('     Monitor    ') As clean_text;

-- Replace the word "phones" with 'device' from the product_name

SELECT Replace(product_name,'phones','device') AS new_prodt_name
From products;

--Get the first 3 character from category

Select Left(category,3) As Catergory_left
From products;

--Get the last 3 character from category

Select Right(category,3) As Catergory_right
From products;

