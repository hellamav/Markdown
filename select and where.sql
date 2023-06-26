USE Sakila;

/* SELECT first_name, last_name From actor; */

/* SELECT last_name FROM actor
WHERE first_name = 'JOHN'; */

/* SELECT first_name, last_name FROM actor
WHERE last_name = 'Neeson'; */

/* SELECT first_name, last_name FROM actor
WHERE actor_id % 10 = 0; */

/* SELECT DESCRIPTION FROM film
WHERE film_id = 100; */

/* SELECT rating FROM film
WHERE rating = 'R'; */

/* SELECT rating FROM film
WHERE rating = 'PG'; */

/* select title, length
from film
order by Length 
LIMIT 10; */

/* select title, length
from film
where length= (select max(length)
from film); */

