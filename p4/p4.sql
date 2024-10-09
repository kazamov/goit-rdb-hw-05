USE mydb;

WITH temp AS (
    SELECT * 
    FROM order_details 
    WHERE quantity > 10
)
SELECT order_id, AVG(quantity) as avg_quantity
FROM temp
GROUP BY order_id;
