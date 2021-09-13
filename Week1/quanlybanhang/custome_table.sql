CREATE DATABASE quanlybanhang;

USE quanlybanhang;

CREATE TABLE customer
(
	cid INT AUTO_INCREMENT NOT NULL,
    cname VARCHAR(50),
    cage INT,
    PRIMARY KEY(cid)
);

CREATE TABLE orders
(
	oid INT AUTO_INCREMENT NOT NULL,
    cid INT NOT NULL,
    odate DATETIME NOT NULL,
    ototalprice DOUBLE,
    PRIMARY KEY(oid),
    FOREIGN KEY(cid) REFERENCES customer(cid)
);

CREATE TABLE product
(
	pid INT AUTO_INCREMENT NOT NULL,
    pname VARCHAR(50),
    pprice DOUBLE,
    PRIMARY KEY(pid)
);

CREATE TABLE orderdetail
(
	oid INT NOT NULL UNIQUE,
    pid INT NOT NULL UNIQUE,
    odqty INT CHECK (odqty >= 1),
    FOREIGN KEY (oid) REFERENCES orders(oid),
    FOREIGN KEY (pid) REFERENCES product(pid)
);