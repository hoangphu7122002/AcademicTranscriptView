---------------- NORMAL PARENT -----------------
-- CONN pr2/p123

--set serveroutput on

-- SELECT CHILDREN SCORE -> OK
SELECT * FROM atv.course_score;

update atv.course_score
set final = 10 where id = 170;
    