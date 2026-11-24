

WITH rental_count AS (
	SELECT 
		c.customer_id AS customer_id,
		COUNT(r.rental_id ) AS total_count
	FROM rental r 
	JOIN customer c
		ON r.customer_id = c.customer_id
	GROUP BY c.customer_id 
), rental_average AS (
		SELECT AVG(total_count) as average_rentals
		FROM rental_count
)
SELECT 
	rc.customer_id,
	CONCAT(c.first_name, ' ', c.last_name) as full_name,
	total_count,
	rental_average.average_rentals
FROM rental_count rc
JOIN customer c
	ON rc.customer_id = c.customer_id
CROSS JOIN rental_average 
WHERE 
	total_count > rental_average.average_rentals
	


