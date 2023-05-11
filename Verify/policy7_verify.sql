------------------- PHONG DAO TAO'S EMPLOYEE -------------
-- CONN emp_pdt/p123

-- SELECT 80 rows of course_score, will increase if any new score is added by teachear
select * from atv.course_score;

-- This will okay, because this is the course that of the current semester HK223 (course 44) - ('44', '3', '11', 'HK223');
update atv.course_score set midterm = 10.0, final = 0 where id = 179;

-- insert score for current semester

-- This will not okay because id=180 -> course_id: 45 - ('45', '5', '19', 'HK213');
update atv.course_score set midterm = 10.0, final = 10.0 where id = 180;