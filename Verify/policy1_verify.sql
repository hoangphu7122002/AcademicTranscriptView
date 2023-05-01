---------- NORMAL STUDENT -------------
-- CONN std1/p123

-- Commit
commit;

--set serveroutput on;

--------------------- POLICY 1 VERIFICATION ---------------------

-- View student's ìnormation
select * from atv.student;

-- View student's score
select * from atv.course_score;

-- Update student information on this student id -> This will be ok! (field: religion, address, email)
update atv.student 
set religion = '', address = '', email = '';

-- Update information on other field -> Not ok;
update atv.student
set gender = '';

-- Update information on another student id -> Not ok;
update atv.student 
set religion = '', address = '', email = '' where id = 10;

