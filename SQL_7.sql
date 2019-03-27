select title from film
where (title like "K%") or (title like "Q%");

SELECT first_name, last_name from actor
where actor_id IN
(select actor_id from film_actor
where film_id IN
(SELECT film_id from film
where title = "Alone Trip"));

SELECT first_name, last_name, email from customer
where address_id IN
(SELECT address_id from address
where city_id IN
(SELECT city_id from city 
where country_id IN
(SELECT country_id from country
where country = 'Canada')));

SELECT title, description from film
where film_id in 
(SELECT film_id from film_category
WHERE category_id IN
(SELECT category_id from category
WHERE name = "Family"));

