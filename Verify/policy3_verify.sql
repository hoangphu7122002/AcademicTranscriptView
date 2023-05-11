---------------- NORMAL TEACHER ----------------
-- CONN tch15/p123

set serveroutput off;

-- Select 20 rows off student -> OKAY
select * from atv.course_score;

-- UPDATE score of 4 suitable  student -> OKAY
update atv.course_score set midterm = 10, final = 10 where id in (15, 60, 105, 150);

-- UPDATE score of unsuitable student (student that not in (15, 60, 105, 150) -> ERROR 
update atv.course_score set midterm = 10, final = 10 where id in (174);

-- TEACHER INSERT SCORE TO STUDENT (TCH15 teach PE - subject_id: 4, HK223 -> find course of this semester -> '15', '4', '15', 'HK223' 
INSERT INTO atv.course_score (id, course_id, student_id, midterm, final, score)
VALUES (182, 15, 59, 5, 6, 5.7);

-- TEACHER INSERT SCORE TO STUDENT BUT FROM INVALID COURSE (DIFFERENCE SEMESTER OR COURSE THAT NOT TEACHED BY THIS TEACHER)
-- ('17', '4', '11', 'HK223'); -> subject 4, teach by tch11 -> This will alert 1 row inserted -> But actually no rows -> is restrict by vpd
INSERT INTO atv.course_score (id, course_id, student_id, midterm, final, score)
VALUES (184, 17, 58, 5, 6, 5.7);