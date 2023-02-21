SELECT u.city, COUNT(t.order_id) AS total_orders 
FROM trades t
INNER JOIN users u
USING(user_id)
WHERE t.status = 'Completed'
GROUP BY u.city
ORDER BY total_orders DESC
LIMIT 3;