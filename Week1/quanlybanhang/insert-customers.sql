USE quanlybanhang;

INSERT INTO customer(cname, cage)
VALUE ('Minh Quan', 10);
INSERT INTO customer(cname, cage)
VALUE ('Ngoc Oanh', 20);
INSERT INTO customer(cname, cage)
VALUE ('Hong Ha', 30);

INSERT INTO orders(cid, odate)
VALUE (1, "2006-03-21");
INSERT INTO orders(cid, odate)
VALUE (2, "2006-03-23");
INSERT INTO orders(cid, odate)
VALUE (1, "2006-03-16");

INSERT INTO product(pname, pprice)
VALUE ("May Giat", 3);
INSERT INTO product(pname, pprice)
VALUE ('Tu Lanh', 5);
INSERT INTO product(pname, pprice)
VALUE ('Dieu Hoa', 7);
INSERT INTO product(pname, pprice)
VALUE ('Quat', 1);
INSERT INTO product(pname, pprice)
VALUE ('Bep Dien', 2);

INSERT INTO orderdetail(oid, pid, odqty)
VALUE (1, 1, 3);
INSERT INTO orderdetail(oid, pid, odqty)
VALUE (1, 3, 7);
INSERT INTO orderdetail(oid, pid, odqty)
VALUE (1, 4, 2);
INSERT INTO orderdetail(oid, pid, odqty)
VALUE (2, 1, 1);
INSERT INTO orderdetail(oid, pid, odqty)
VALUE (3, 1, 8);
INSERT INTO orderdetail(oid, pid, odqty)
VALUE (2, 5, 4);
INSERT INTO orderdetail(oid, pid, odqty)
VALUE (2, 3, 3);