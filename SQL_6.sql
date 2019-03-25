SELECT staff.first_name, staff.last_name, address.address
from staff
INNER JOIN address on address.address_id = staff.address_id; 

SELECT payment_id, amount, payment_date from payment
INNER JOIN payment on staff.staff_id = payment.staff_id
GROUP BY amount
where payment.payment_date = '2005-08';

SELECT film.title as 'Film', count(actor_id) as 'Actor count'
from film
INNER JOIN film_actor on film_actor.film_id = film.film_id
GROUP BY Film;

select count(film_id) from inventory
inner join film on film.film_id = inventory.film_id
where film.title = 'Hunchback Impossible';

select customer.cutomer_id, customer.first_name, customer.last_name, payment.amount 
from customer
inner join payment on customer.customer_id = payment.customer_id
GROUP BY payment.customer_id
ORDER BY customer.last_name, customer.first_name
