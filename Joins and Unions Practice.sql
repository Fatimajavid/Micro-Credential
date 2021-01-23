-- Joins and Unions Practice

-- Join the film to the film_actor table.
SELECT * from film
INNER JOIN film_actor
ON film.film_id = film_actor.film_id

-- Join the actor table to the film_actor table.
SELECT * from film_actor
INNER JOIN actor
ON actor.actor_id = film_actor.actor_id

-- Try to join the actor, film_actor, and film table together (3 joins!)
SELECT * FROM ((film_actor
INNER JOIN film ON film.film_id = film_actor.film_id)
INNER JOIN actor ON actor.actor_id = film_actor.actor_id)
