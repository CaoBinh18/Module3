CREATE DATABASE quanlydiemthi;

USE quanlydiemthi;

CREATE TABLE hocsinh(
    mahs VARCHAR(20),
    tenhs VARCHAR(50),
    ngaysinh DATETIME,
    lop VARCHAR(20),
    gt VARCHAR(20),
    PRIMARY KEY(mahs)
);

CREATE TABLE monhoc(
	mamh VARCHAR(20),
    tenmh VARCHAR(50),
    PRIMARY KEY(mamh)
);

CREATE TABLE bangdiem(
    mahs VARCHAR(20),
    mamh VARCHAR(20),
    diemthi INT,
    ngaykt DATETIME,
    PRIMARY KEY (mahs, mamh),
    FOREIGN KEY (mahs) REFERENCES hocsinh(mahs),
    FOREIGN KEY (mamh) REFERENCES monhoc(mamh)
);

CREATE TABLE giaovien(
    magv VARCHAR(20),
    tengv VARCHAR(20),
    sdt VARCHAR(10),
    PRIMARY KEY(magv)
);

ALTER TABLE monhoc ADD magv VARCHAR(20);
ALTER TABLE monhoc ADD CONSTRAINT fk_mgv FOREIGN KEY (magv) REFERENCES giaovien(magv);