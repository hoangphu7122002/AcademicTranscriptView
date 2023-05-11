------------------- PHONG DAO TAO'S EMPLOYEE -------------
-- CONN emp_pdt/p123

-- SELECT 80 rows of course_score, will increase if any new score is added by teachear
select * from atv.course_score;

-- This will okay, because this is the course that of the current semester HK223 (course 44) - ('44', '3', '11', 'HK223');
update atv.course_score set midterm = 10.0, final = 0 where id = 179;

-- insert score for current semester course_id: 29, 30 -> OKAY
INSERT INTO atv.course_score (id, course_id, student_id, midterm, final, score)
VALUES (190, 30, 59, 5, 6, 5.7);

-- Insert score for outer semester -> Error
-- ('22', '11', '22', 'HK213');
INSERT INTO atv.course_score (id, course_id, student_id, midterm, final, score)
VALUES (191, 22, 59, 5, 6, 5.7);

-- This will not okay because id=180 -> course_id: 45 - ('45', '5', '19', 'HK213');
update atv.course_score set midterm = 10.0, final = 10.0 where id = 180;