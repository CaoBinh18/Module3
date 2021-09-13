USE quanlysinhvien;

SELECT * FROM quanlysinhvien.student;

SELECT * FROM student WHERE student_name like "H%";

SELECT * FROM class WHERE MONTH(startday) = 12;

SELECT * FROM subjects WHERE credit BETWEEN 3 AND 5;

UPDATE student 
SET class_id = 2
WHERE student_name = 'Hung';

SELECT s.student_name, sub.sub_name, m.mark 
FROM student s
JOIN mark m ON m.student_id = s.student_id
JOIN subjects sub ON sub.sub_id = m.sub_id
ORDER BY m.mark DESC