CREATE DATABASE quanlysinhvien;

USE quanlysinhvien;

CREATE TABLE class
(
    class_id   INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    class_name VARCHAR(60) NOT NULL,
    startday DATETIME NOT NULL,
    statuss BIT
);

CREATE TABLE student
(
    student_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    student_name VARCHAR(30) NOT NULL,
    address VARCHAR(50),
    phone VARCHAR(20),
    statuss BIT,
    class_id INT NOT NULL,
    FOREIGN KEY (class_id) REFERENCES class(class_id)
);

CREATE TABLE subjects
(
    sub_id INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sub_name VARCHAR(30) NOT NULL,
    credit TINYINT NOT NULL DEFAULT 1 CHECK ( credit >= 1 ),
    statuss BIT DEFAULT 1
);

CREATE TABLE mark
(
    mark_id    INT NOT NULL AUTO_INCREMENT PRIMARY KEY,
    sub_id     INT NOT NULL,
    student_id INT NOT NULL,
    mark      FLOAT   DEFAULT 0 CHECK ( mark BETWEEN 0 AND 100),
    examtimes TINYINT DEFAULT 1,
    UNIQUE (sub_id, student_id),
    FOREIGN KEY (sub_id) REFERENCES subjects (sub_id),
    FOREIGN KEY (student_id) REFERENCES student(student_id)
);