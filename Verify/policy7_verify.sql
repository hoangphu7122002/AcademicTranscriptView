------------------- PHONG DAO TAO'S EMPLOYEE -------------
-- CONN emp_pdt/p123

-- SELECT 80 rows of course_score
select * from atv.course_score;

-- This will okay
update atv.course_score set midterm = 10.0, final = 10.0 where id = 179;

-- This will not okay
update atv.course_score set midterm = 10.0, final = 10.0 where id = 180;