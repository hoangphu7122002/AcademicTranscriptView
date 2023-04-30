-- CONN tch15/p123

--select * from atv.course_score where ;

select * from atv.course_score where course_id in (select id from atv.course where teacher_id = 15);

update atv.course_score set midterm = 0, final = 10 where id in (15, 60, 105, 150);