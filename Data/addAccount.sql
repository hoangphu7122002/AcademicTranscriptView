--select * from student where parent_id= 2;
--SET SERVEROUTPUT ON;
--begin
--    dbms_output.put_line('a');
--end;


--CONN atv/atv;
-- ADMIN USERS
-- Create role ATV_SEC to manage privilege to access data in PROJECT schema of other users.
GRANT connect, create user, drop user, create role, drop any role
    TO atv_sec IDENTIFIED BY atvsec;

-- Create role SEC_ADMIN to manage policy.
--GRANT connect, 
--    create function, 
--    create procedure, 
--    execute ON atv.course_score 
--TO sec_admin IDENTIFIED BY secadmin;

grant connect, create procedure to sec_admin identified by secadmin;
grant select, update, delete on atv.course_score to sec_admin;
grant select, update, delete on atv.course to sec_admin;
grant select, update, delete on atv.subject to sec_admin;
grant select, update, delete on atv.student to sec_admin;

CREATE ROLE student; -- 60
GRANT connect, create session TO student;
grant select, update on student to student;
grant select on course_score to student;

CREATE ROLE parent; -- 40
GRANT connect, create session TO parent;
grant select on course_score to parent;

CREATE ROLE teacher; -- 18
GRANT connect, create session TO teacher;

CREATE ROLE form_teacher; -- 10
GRANT connect, create session TO form_teacher;

CREATE ROLE head_dept; -- 6
GRANT connect, create session TO head_dept;
grant select on course_score to head_dept;

CREATE ROLE dean; -- 3
GRANT connect, create session TO dean;
grant select on course_score to dean;

CREATE USER emp_pdt IDENTIFIED BY p123; -- 1
GRANT connect, create session TO emp_pdt;

-- CREATE and GRANT ROLE to users
GRANT student TO std1 IDENTIFIED BY p123;
GRANT student TO std2 IDENTIFIED BY p123;
GRANT student TO std3 IDENTIFIED BY p123;
GRANT student TO std4 IDENTIFIED BY p123;
GRANT student TO std5 IDENTIFIED BY p123;
GRANT student TO std6 IDENTIFIED BY p123;
GRANT student TO std7 IDENTIFIED BY p123;
GRANT student TO std8 IDENTIFIED BY p123;
GRANT student TO std9 IDENTIFIED BY p123;
GRANT student TO std10 IDENTIFIED BY p123;
GRANT student TO std11 IDENTIFIED BY p123;
GRANT student TO std12 IDENTIFIED BY p123;
GRANT student TO std13 IDENTIFIED BY p123;
GRANT student TO std14 IDENTIFIED BY p123;
GRANT student TO std15 IDENTIFIED BY p123;
GRANT student TO std16 IDENTIFIED BY p123;
GRANT student TO std17 IDENTIFIED BY p123;
GRANT student TO std18 IDENTIFIED BY p123;
GRANT student TO std19 IDENTIFIED BY p123;
GRANT student TO std20 IDENTIFIED BY p123;
GRANT student TO std21 IDENTIFIED BY p123;
GRANT student TO std22 IDENTIFIED BY p123;
GRANT student TO std23 IDENTIFIED BY p123;
GRANT student TO std24 IDENTIFIED BY p123;
GRANT student TO std25 IDENTIFIED BY p123;
GRANT student TO std26 IDENTIFIED BY p123;
GRANT student TO std27 IDENTIFIED BY p123;
GRANT student TO std28 IDENTIFIED BY p123;
GRANT student TO std29 IDENTIFIED BY p123;
GRANT student TO std30 IDENTIFIED BY p123;
GRANT student TO std31 IDENTIFIED BY p123;
GRANT student TO std32 IDENTIFIED BY p123;
GRANT student TO std33 IDENTIFIED BY p123;
GRANT student TO std34 IDENTIFIED BY p123;
GRANT student TO std35 IDENTIFIED BY p123;
GRANT student TO std36 IDENTIFIED BY p123;
GRANT student TO std37 IDENTIFIED BY p123;
GRANT student TO std38 IDENTIFIED BY p123;
GRANT student TO std39 IDENTIFIED BY p123;
GRANT student TO std40 IDENTIFIED BY p123;
GRANT student TO std41 IDENTIFIED BY p123;
GRANT student TO std42 IDENTIFIED BY p123;
GRANT student TO std43 IDENTIFIED BY p123;
GRANT student TO std44 IDENTIFIED BY p123;
GRANT student TO std45 IDENTIFIED BY p123;
GRANT student TO std46 IDENTIFIED BY p123;
GRANT student TO std47 IDENTIFIED BY p123;
GRANT student TO std48 IDENTIFIED BY p123;
GRANT student TO std49 IDENTIFIED BY p123;
GRANT student TO std50 IDENTIFIED BY p123;
GRANT student TO std51 IDENTIFIED BY p123;
GRANT student TO std52 IDENTIFIED BY p123;
GRANT student TO std53 IDENTIFIED BY p123;
GRANT student TO std54 IDENTIFIED BY p123;
GRANT student TO std55 IDENTIFIED BY p123;
GRANT student TO std56 IDENTIFIED BY p123;
GRANT student TO std57 IDENTIFIED BY p123;
GRANT student TO std58 IDENTIFIED BY p123;
GRANT student TO std59 IDENTIFIED BY p123;
GRANT student TO std60 IDENTIFIED BY p123;

GRANT teacher TO tch10 IDENTIFIED BY p123;
GRANT form_teacher TO tch10;
GRANT teacher TO tch11 IDENTIFIED BY p123;
GRANT teacher TO tch12 IDENTIFIED BY p123;
GRANT form_teacher TO tch12;
GRANT teacher TO tch13 IDENTIFIED BY p123;
GRANT teacher TO tch14 IDENTIFIED BY p123;
GRANT form_teacher TO tch14;
GRANT teacher TO tch15 IDENTIFIED BY p123;
GRANT teacher TO tch16 IDENTIFIED BY p123;
GRANT form_teacher TO tch16;
GRANT teacher TO tch17 IDENTIFIED BY p123;
GRANT teacher TO tch18 IDENTIFIED BY p123;
GRANT form_teacher TO tch18;
GRANT teacher TO tch19 IDENTIFIED BY p123;
GRANT teacher TO tch20 IDENTIFIED BY p123;
GRANT form_teacher TO tch20;
GRANT teacher TO tch21 IDENTIFIED BY p123;
GRANT teacher TO tch22 IDENTIFIED BY p123;
GRANT form_teacher TO tch22;
GRANT teacher TO tch23 IDENTIFIED BY p123;
GRANT teacher TO tch24 IDENTIFIED BY p123;
GRANT form_teacher TO tch24;
GRANT teacher TO tch25 IDENTIFIED BY p123;
GRANT teacher TO tch26 IDENTIFIED BY p123;
GRANT form_teacher TO tch26;
GRANT teacher TO tch27 IDENTIFIED BY p123;
GRANT form_teacher TO tch27;

GRANT head_dept TO hd1 IDENTIFIED BY p123;
GRANT head_dept TO hd2 IDENTIFIED BY p123;
GRANT head_dept TO hd3 IDENTIFIED BY p123;
GRANT head_dept TO hd4 IDENTIFIED BY p123;
GRANT head_dept TO hd5 IDENTIFIED BY p123;
GRANT head_dept TO hd6 IDENTIFIED BY p123;

GRANT dean TO dn1 IDENTIFIED BY p123;
GRANT dean TO dn2 IDENTIFIED BY p123;
GRANT dean TO dn3 IDENTIFIED BY p123;

GRANT parent TO pr1 IDENTIFIED BY p123;
GRANT parent TO pr2 IDENTIFIED BY p123;
GRANT parent TO pr3 IDENTIFIED BY p123;
GRANT parent TO pr4 IDENTIFIED BY p123;
GRANT parent TO pr5 IDENTIFIED BY p123;
GRANT parent TO pr6 IDENTIFIED BY p123;
GRANT parent TO pr7 IDENTIFIED BY p123;
GRANT parent TO pr8 IDENTIFIED BY p123;
GRANT parent TO pr9 IDENTIFIED BY p123;
GRANT parent TO pr10 IDENTIFIED BY p123;
GRANT parent TO pr11 IDENTIFIED BY p123;
GRANT parent TO pr12 IDENTIFIED BY p123;
GRANT parent TO pr13 IDENTIFIED BY p123;
GRANT parent TO pr14 IDENTIFIED BY p123;
GRANT parent TO pr15 IDENTIFIED BY p123;
GRANT parent TO pr16 IDENTIFIED BY p123;
GRANT parent TO pr17 IDENTIFIED BY p123;
GRANT parent TO pr18 IDENTIFIED BY p123;
GRANT parent TO pr19 IDENTIFIED BY p123;
GRANT parent TO pr20 IDENTIFIED BY p123;
GRANT parent TO pr21 IDENTIFIED BY p123;
GRANT parent TO pr22 IDENTIFIED BY p123;
GRANT parent TO pr23 IDENTIFIED BY p123;
GRANT parent TO pr24 IDENTIFIED BY p123;
GRANT parent TO pr25 IDENTIFIED BY p123;
GRANT parent TO pr26 IDENTIFIED BY p123;
GRANT parent TO pr27 IDENTIFIED BY p123;
GRANT parent TO pr28 IDENTIFIED BY p123;
GRANT parent TO pr29 IDENTIFIED BY p123;
GRANT parent TO pr30 IDENTIFIED BY p123;
GRANT parent TO pr31 IDENTIFIED BY p123;
GRANT parent TO pr32 IDENTIFIED BY p123;
GRANT parent TO pr33 IDENTIFIED BY p123;
GRANT parent TO pr34 IDENTIFIED BY p123;
GRANT parent TO pr35 IDENTIFIED BY p123;
GRANT parent TO pr36 IDENTIFIED BY p123;
GRANT parent TO pr37 IDENTIFIED BY p123;
GRANT parent TO pr38 IDENTIFIED BY p123;
GRANT parent TO pr39 IDENTIFIED BY p123;
GRANT parent TO pr40 IDENTIFIED BY p123;
