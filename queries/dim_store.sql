SELECT
	s.store_id,
	a.address,
	c.city AS city_name,
	c2.country AS country_name,
	s.manager_staff_id 
FROM store s
JOIN address a 
	ON s.address_id = a.address_id
JOIN city c 
	ON a.city_id = c.city_id
JOIN country c2 
	ON c.country_id = c2.country_id 
