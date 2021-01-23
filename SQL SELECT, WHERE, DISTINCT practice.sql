-- SQL SELECT, WHERE, DISTINCT practice

-- Select statement to return all columns and rows from the customer table.
SELECT * 
	from customer

-- Query to select first name, last name, and email from the customer table.
SELECT first_name, last_name, email
	from customer

-- Query to return all rows and columns from the film table.
SELECT * 
	from film

-- Query to return unique rows from the release_year column in the film table.
SELECT distinct release_year from film

-- Query to return unique rows from the rental_rate column in the film table.
SELECT distinct rental_rate from film

/* A customer left us some feedback about our store. Write a query to find her email address – for
Nancy Thomas. */
SELECT email from customer
WHERE first_name = 'Nancy'
AND last_name = 'Thomas'

/* We’re trying to find a customer located at a certain address ‘259 Ipoh Drive’ – can you find their
phone number? */
SELECT  c.first_name,
		c.last_name,
		a.address_id,
		a.phone,
		a.address
FROM customer c

JOIN address a 
ON a.address_id = c.address_id
WHERE address = '259 Ipoh Drive'
		
--Query from the customer table, where store id is 1 and address id is greater than 150. 
SELECT * from customer 
WHERE store_id = 1 and address_id > 150
ORDER BY address_id

/* Query to return a list of transactions from the payment table where the amount is greater
than 5. */
SELECT * from payment
WHERE amount > 5.00
ORDER BY amount
