
DROP FUNCTION IF EXISTS Divide;

DELIMITER //

CREATE FUNCTION Divide(dividend FLOAT, divisor FLOAT)
RETURNS FLOAT
DETERMINISTIC 
NO SQL
BEGIN
    DECLARE result FLOAT;
    SET result = dividend / divisor;
    RETURN result;
END //

DELIMITER ;

USE mydb;

SELECT Divide(quantity, 10) as division_result FROM order_details

