CREATE DATABASE banking_transaction_management;

USE banking_transaction_management;

CREATE TABLE customers(
	id INT NOT NULL AUTO_INCREMENT,
    fullname VARCHAR(70),
    age TINYINT,
    balance DOUBLE,
    PRIMARY KEY (id)
);

CREATE TABLE deposits(
	id INT NOT NULL AUTO_INCREMENT,
	customer_id INT NOT NULL,
    deposits_time DATETIME,
	amount DOUBLE,
    PRIMARY KEY(id),
	FOREIGN KEY (customer_id) REFERENCES customers(id)
);

CREATE TABLE withdraws(
	id INT NOT NULL AUTO_INCREMENT,
	customer_id INT NOT NULL,
    withdraws_time DATETIME,
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
    transfers_time DATETIME,
    PRIMARY KEY(id),
	FOREIGN KEY (customer_id) REFERENCES customers(id)
);