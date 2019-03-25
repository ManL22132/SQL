select last_name, count(last_name) from actor
GROUP BY last_name;

select last_name, count(last_name) from actor
GROUP BY last_name
where count(last_name) >= 2;

UPDATE actor
SET first_name = 'HARPO'
WHERE first_name = 'GROUCHO' AND last_name = 'WILLIAMS';