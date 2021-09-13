USE banking_transaction_management;

DROP PROCEDURE sp_withdraws;

DELIMITER //
CREATE PROCEDURE sp_withdraws(IN id INT , IN money DOUBLE)
BEGIN
DECLARE balance1 DOUBLE ;
SET balance1 = (SELECT c.balance FROM customers c WHERE c.id = id);
IF (balance1 >= money) THEN
SET balance1 = balance1 - money ;
UPDATE customers
SET balance = balance1 WHERE customers.id=id;
INSERT INTO withdraws(customer_id , amount, withdraws_time)
VALUES(id,money,sysdate());
END IF;
END //