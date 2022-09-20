USE sakila;

-- 1. Drop column picture from staff..
SELECT * FROM staff;

ALTER TABLE staff
DROP COLUMN picture;

SELECT * FROM staff;


-- 2. A new person is hired to help Jon. Her name is TAMMY SANDERS, and she is a customer. 
-- Update the database accordingly.
SELECT * FROM customer;

INSERT INTO staff(staff_id, first_name, last_name, address_id, store_id, active, username, last_update) 
VALUES (3,'Tammy','Sanders',79,2,1,'Tammy',now());

SELECT * FROM staff;


-- Add rental for movie "Academy Dinosaur" by Charlotte Hunter from Mike Hillyer at Store 1.
-- You can use current date for the rental_date column in the rental table. 
-- Hint: Check the columns in the table rental and see what information you would need to add there. 
-- You can query those pieces of information. For eg., you would notice that you need customer_id information as well. 
-- Use similar method to get inventory_id, film_id, and staff_id.

SELECT customer_id FROM sakila.customer
WHERE first_name = 'CHARLOTTE' AND last_name = 'HUNTER';

SELECT film_id FROM sakila.film
WHERE title = 'ACADEMY DINOSAUR';

SELECT inventory_id FROM sakila.inventory
WHERE film_id = '1';

SELECT staff_id FROM sakila.staff
WHERE staff_id = '1';

INSERT INTO rental(rental_date,inventory_id,customer_id,staff_id,last_update)
VALUES (now(),9,130,1,now());

SELECT * FROM sakila.rental;
