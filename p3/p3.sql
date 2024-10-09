USE mydb;

SELECT od.order_id, AVG(od.quantity) as avg_quantity
FROM (
	SELECT * 
    FROM order_details 
    WHERE quantity > 10
) as od
GROUP BY od.order_id;