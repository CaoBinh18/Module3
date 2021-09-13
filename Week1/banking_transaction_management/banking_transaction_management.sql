USE banking_transaction_management;

CREATE TABLE customers(
	id INT NOT NULL AUTO_INCREMENT,
    fullname VARCHAR(70),
    balance DOUBLE,
    PRIMARY KEY (id)
);

CREATE TABLE deposits(
	id INT NOT NULL AUTO_INCREMENT,
	customer_id INT NOT NULL,
	amount DOUBLE,
    PRIMARY KEY(id),
	FOREIGN KEY (customer_id) REFERENCES customers(id)
);

CREATE TABLE withdraws(
	id INT NOT NULL AUTO_INCREMENT,
	customer_id INT NOT NULL,
	amount DOUBLE,
    PRIMARY KEY(id),
	FOREIGN KEY (customer_id) REFERENCES customers(id)
);

CREATE TABLE transfers(
	id INT NOT NULL AUTO_INCREMENT,
	customer_id INT NOT NULL,
	amount DOUBLE,
    deposits_id INT NOT NULL,
	withdraws_id INT NOT NULL,
    PRIMARY KEY(id),
	FOREIGN KEY (customer_id) REFERENCES customers(id)
);