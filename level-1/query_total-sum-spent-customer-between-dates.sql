SET @start_date = '2026-03-05';
SET @end_date   = '2026-04-19';

SELECT 
	c.customer_id,
    p.name,
    SUM(l.price) AS total_spent_euros 
FROM ticket as t
JOIN customers as c
	USING (customer_id)
JOIN lenses as l
	ON t.lenses_id = l.lenses_id
JOIN persons as p
	USING (person_id)
WHERE t.created_at >= @start_date
	AND t.created_at <= @end_date
GROUP BY c.customer_id;