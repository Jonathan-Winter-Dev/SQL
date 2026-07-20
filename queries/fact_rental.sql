SELECT
	r.rental_id,
	r.rental_date,
	r.customer_id,
	r.staff_id,
	i.film_id,
	p.amount,
	i.store_id 
FROM rental r
JOIN inventory i 
	ON r.inventory_id = i.inventory_id 
JOIN payment p 
	ON 	p.rental_id = r.rental_id


