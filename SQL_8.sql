CREATE VIEW Family AS
SELECT title, description from film
where film_id in 
(SELECT film_id from film_category
WHERE category_id IN
(SELECT category_id from category
WHERE name = "Family"));

SELECT * FROM Family;

DROP VIEW Family;
