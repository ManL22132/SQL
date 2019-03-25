select actor_id, first_name, last_name from actor
where first_name = "Joe";

select actor_id, first_name, last_name from actor
where last_name like "%GEN%";

select actor_id, first_name, last_name from actor
where last_name like "%LI%"
ORDER BY last_name, first_name;

select country, country_id from country
where country in ('Afghanistan', 'Bangladesh', 'China');