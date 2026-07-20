SELECT
	c.customer_id,
	c.first_name,
	c.last_name,
	c.email,
	c.active,
	c.create_date,
	a.address,
	c2.city as city_name,
	c3.country as country_name 
FROM customer c 
LEFT JOIN address a 
	ON a.address_id = c.address_id
LEFT JOIN city c2 
	ON a.city_id  = c2.city_id
LEFT JOIN country c3 
	ON c2.country_id = c3.country_id 
