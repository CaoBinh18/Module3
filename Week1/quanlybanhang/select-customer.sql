USE quanlybanhang;

SELECT o.oid, o.odate, o.ototalprice 
FROM orders o;

SELECT cname, pname
FROM customer
INNER JOIN orders ON customer.cid = orders.cid
INNER JOIN orderdetail ON orderdetail.oid = orders.oid
INNER JOIN product ON product.pid = orderdetail.pid
GROUP BY cname, pname;

SELECT cname, pname
FROM customer
INNER JOIN orders ON customer.cid = orders.cid
INNER JOIN orderdetail ON orderdetail.oid = orders.oid
INNER JOIN product ON product.pid = orderdetail.pid
WHERE odqty = 0
GROUP BY cname, pname;

SELECT o.oid, o.odate, (od.odqty * p.pprice) AS "into_money"
FROM orders o
INNER JOIN orderdetail od ON od.oid = o.oid
INNER JOIN product p ON p.pid = od.pid;