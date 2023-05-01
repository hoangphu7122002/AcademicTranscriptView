---------------- NORMAL TEACHER ----------------
-- CONN tch15/p123

set serveroutput off;

-- Select 20 rows off student -> OKAY
select * from atv.course_score;

-- UPDATE score of 4 suitable  student -> OKAY
update atv.course_score set midterm = 0, final = 10 where id in (15, 60, 105, 150);

-- UPDATE score of unsuitable student (student that not in (15, 60, 105, 150) -> ERROR 
update atv.course_score set midterm = 0, final = 10 where id in (174);