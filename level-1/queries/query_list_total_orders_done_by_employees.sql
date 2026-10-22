SELECT
	COUNT(o.order_id) as orders_done,
	concat(e.first_name, " ",e.last_name) as employee_name
FROM orders as o
JOIN restaurant as r  USING (restaurant_id)
JOIN employees as e USING (restaurant_id)
GROUP BY concat(e.first_name, " ",e.last_name)
