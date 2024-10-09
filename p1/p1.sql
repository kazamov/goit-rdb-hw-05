USE mydb;

SELECT *, (SELECT customer_id FROM orders as o WHERE od.order_id = o.id LIMIT 1) as customer_id
FROM order_details as od;