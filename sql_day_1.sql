select last_name 
from actor
where last_name like 'Wahlberg';

select count(amount)
from payment
where amount between 3.99 and 5.99

select count(film_id), title
from film
group by film_id

select film_id, count(*) as num_copies
from inventory
group by film_id
order by num_copies desc
limit 1;

select count(*) as num_customers_willam
from customer
where last_name = 'William'

select staff_id, count(rental_id) as num_rentals_sold
from rental
group by staff_id 
order by num_rentals_sold desc 
limit 1;

select count(distinct district) as num_districts
from address

select film_id, count(actor_id) as num_actors_in_film
from film_actor
group by film_id 
order by num_actors_in_film desc 
limit 1;

select count(*) as num_customer_store1_es
from customer
where store_id =1 and last_name like '%es';

SELECT p.amount, COUNT(r.rental_id) AS num_rentals
FROM payment p
JOIN rental r ON p.rental_id = r.rental_id
WHERE p.customer_id between 380 and 430
GROUP BY p.amount
HAVING count(r.rental_id) > 250

select count(distinct rating) as num_rating_categories
from film;

select rating, count(*) as num_movies
from film
group by rating 
order by num_movies desc
limit 1;