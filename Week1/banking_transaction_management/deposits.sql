USE banking_transaction_management;

DROP PROCEDURE sp_deposit;

DELIMITER //
CREATE PROCEDURE sp_deposit(IN id INT, IN money DOUBLE)
BEGIN
UPDATE customers
SET balance = balance + money WHERE customers.id = id;
INSERT INTO deposits(customer_id, amount, deposits_time)
VALUES(id, money, sysdate());
End //
