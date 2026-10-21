SET @locality = 'Barcelona';
SET @categoria = 'Bebidas';

SELECT 
	count(c.category_id) as 'Number of products of the determined category sold',
    l.name as "locality"
FROM orders as o
JOIN order_items as o_i USING (order_id) 
JOIN products as p USING (product_id)
JOIN categories as c USING (category_id)
JOIN restaurant as r USING (restaurant_id)
JOIN addresses as a USING (address_id)
JOIN localities as l USING (locality_id)
WHERE c.name = @categoria AND l.name = @locality
GROUP BY l.name;
