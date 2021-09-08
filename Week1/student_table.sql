CREATE DATABASE quanlysinhvien;

USE quanlysinhvien;

CREATE TABLE class
(
    classid   INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    classname VARCHAR(60) NOT NULL,
    startday DATETIME NOT NULL,
    status BIT
);

CREATE TABLE student
(
    studentid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    studentname VARCHAR(30) NOT NULL,
    address VARCHAR(50),
    phone VARCHAR(20),
    status BIT,
    classid INT NOT NULL,
    FOREIGN KEY (classid) REFERENCES class(classid)
);

CREATE TABLE subject
(
    subid INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    subname VARCHAR(30) NOT NULL,
    credit TINYINT NOT NULL DEFAULT 1 CHECK ( credit >= 1 ),
    status BIT DEFAULT 1
);

CREATE TABLE mark
(
    markid    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    subid     INT NOT NULL,
    studentid INT NOT NULL,
    mark      FLOAT   DEFAULT 0 CHECK ( mark BETWEEN 0 AND 100),
    examtimes TINYINT DEFAULT 1,
    UNIQUE (subid, studentid),
    FOREIGN KEY (subid) REFERENCES subject (subid),
    FOREIGN KEY (studentid) REFERENCES student(studentid)
);