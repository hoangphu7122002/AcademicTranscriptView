---------------- NORMAL PARENT -----------------
-- CONN pr2/p123

--set serveroutput on

-- SELECT CHILDREN SCORE -> OK
SELECT * FROM atv.course_score;

-- Try to update children's score -> this error because parent just see their child's score -> so admin not grant update or insert to this kind of account
update atv.course_score set final = 10 where id = 170;