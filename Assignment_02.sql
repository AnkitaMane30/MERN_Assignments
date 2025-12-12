--Q.1
SELECT * FROM courses WHERE start_date > CURDATE() ;

--Q.2
SELECT s.reg_no, s.name, s.email, s.mobile_no, c.course_id,c.course_name 
FROM student s
INNER JOIN courses c
ON s.course_id = c.course_id;

--Q.3
SELECT s.reg_no, s.name, s.email, s.mobile_no, c.* 
FROM student s
INNER JOIN courses c 
ON s.course_id = c.course_id
WHERE email = " john@example.com ";

--Q.4
SELECT c.course_id, c.course_name, c.start_date, c.end_date , c.video_expire_days,
            v.video_id, v.title, v.added_at FROM courses c 
            INNER JOIN videos v ON c.course_id = v.course_id
            INNER JOIN student s ON s.course_id = c.course_id
            WHERE s.email = " john@example.com" 
            AND (start_date + video_expire_days) < CURDATE() ;