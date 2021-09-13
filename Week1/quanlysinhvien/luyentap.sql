USE quanlysinhvien;

SELECT sub.sub_id, sub.sub_name, sub.credit, sub.statuss
FROM subjects sub 
GROUP BY  sub.sub_id, sub.sub_name, sub.credit, sub.statuss
HAVING MAX(sub.credit) >= ALL (SELECT credit FROM subjects);

SELECT sub.sub_id, sub.sub_name, MAX(m.mark) AS "MAX" 
FROM subjects sub
JOIN mark m ON m.sub_id = sub.sub_id;

SELECT s.student_id, s.student_name, AVG(m.mark)  AS "DTB" 
FROM student s
JOIN mark m ON m.student_id = s.student_id
GROUP BY s.student_id, s.student_name
ORDER BY s.student_id, s.student_id DESC