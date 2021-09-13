CREATE DATABASE quanlyvattu;

USE quanlyvattu;

CREATE TABLE phieuxuat
(
	sopx INT UNIQUE NOT NULL,
    ngayxuat DATETIME,
    PRIMARY KEY (sopx)
);

CREATE TABLE vattu
(
	mavtu INT NOT NULL UNIQUE,
    tenvtu VARCHAR(50),
    PRIMARY KEY (mavtu)
);

CREATE TABLE phieunhap
(
	sopn INT NOT NULL UNIQUE,
    ngaynhap DATETIME,
    PRIMARY KEY (sopn)
);

CREATE TABLE nhacc
(
	mancc INT NOT NULL UNIQUE,
    tenncc VARCHAR(50),
    diachi VARCHAR(70),
    sdt VARCHAR(10),
    PRIMARY KEY (mancc)
); 

CREATE TABLE dondh
(
	sodh INT NOT NULL UNIQUE,
    ngaydh DATETIME,
    mancc INT NOT NULL,
    PRIMARY KEY (sodh),
    FOREIGN KEY (mancc) REFERENCES nhacc(mancc)
);

CREATE TABLE chitietphieuxuat
(
	dgxuat INT,
    slxuat INT,
    sopx INT NOT NULL,
    mavtu INT NOT NULL,
    FOREIGN KEY (sopx) REFERENCES phieuxuat(sopx),
    FOREIGN KEY (mavtu) REFERENCES vattu(mavtu)
);

CREATE TABLE chitietphieunhap
(
	dgnhap INT,
    slnhap INT,
    mavtu INT NOT NULL,
    sopn INT NOT NULL,
    FOREIGN KEY (mavtu) REFERENCES vattu(mavtu),
    FOREIGN KEY (sopn) REFERENCES phieunhap(sopn)
);

CREATE TABLE chitietdondathang
(
	mavtu INT NOT NULL,
    sodh INT NOT NULL,
    FOREIGN KEY (mavtu) REFERENCES vattu(mavtu),
    FOREIGN KEY (sodh) REFERENCES dondh(sodh)
);