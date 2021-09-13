USE quanlysinhvien;

SELECT * FROM quanlysinhvien.student;

SELECT * FROM student WHERE studentname like "h%";

SELECT * FROM class WHERE MONTH(startday) = 12;

SELECT * FROM subject WHERE credit BETWEEN 3 AND 5;

UPDATE student 
SET classid = 2
WHERE studentname = 'Hung';

SELECT studentname, subname, mark 
FROM student 
INNER JOIN subject
INNER JOIN mark
ON student.studentid = mark.studentid
AND subject.subid = mark.subid
WHERE mark ORDER BY mark DESC