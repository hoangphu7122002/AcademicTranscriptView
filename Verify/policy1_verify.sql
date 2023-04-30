-- Commit
commit;

--------------------- POLICY 1 VERIFICATION ---------------------

-- View student's ìnormation
select * from atv.student;

-- Update student information on this student id -> This will be ok! (field: religion, ethnic, email)
update atv.student 
set religion = '', ethnic = '', email = '';

-- Update information on other field -> Not ok;
update atv.student
set gender = '';

-- Update information on another student id -> This will not ok;
update atv.student 
set religion = '', ethnic = '', email = '' where id = 2;

