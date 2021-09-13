SELECT *
FROM student;

SELECT *
FROM student
WHERE status = true;

SELECT *
FROM subject
WHERE credit < 10;

SELECT s.studentid, s.studentname, c.classname
FROM student s join class c on s.classid = c.classiD
WHERE c.classname = 'A1';

SELECT s.studentid, s.studentname, sub.subname, m.mark
FROM student s join mark m on s.studentid = m.studentid join subject sub on m.subid = sub.subid
WHERE sub.subname = 'CF';