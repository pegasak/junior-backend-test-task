SELECT 
    clients.name AS client_name,
    SUM(order_items.quantity * order_items.price_at_order) AS total_sum
FROM clients
JOIN orders ON orders.client_id = clients.id
JOIN order_items ON order_items.order_id = orders.id
GROUP BY clients.id, clients.name;