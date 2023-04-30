-- grant all privileges to lbacsys identified by lbacsys;
-- grant execute on dbms_rls to lbacsys;
-- grant execute on SA_SYSDBA to lbacsys;
-- grant exempt access policy to lbacsys;
-- ALTER USER lbacsys IDENTIFIED BY lbacsys ACCOUNT UNLOCK;
-- CONN lbacsys/lbacsys

SET SERVEROUTPUT ON


----------------------------------------------------
-- FUNCTION TO GET CHILDREN ID FROM PARENT ID
create or replace function get_stdid_from_parent(
    prid varchar2)
return varchar2
as
    v_concatenated_values varchar2(1000);
begin 
    select listagg(id, ', ') within group (Order by id) 
        into v_concatenated_values from atv.student where parent_id = substr(prid, 3, 2);
    return v_concatenated_values;
end;
/

-------------------------------------
-- CREATE THE HELPER TABLE TO STORE PARENTID AND CHILDREN ID
CREATE TABLE parent_and_child 
(
    prid            varchar2(10),
    childs          VARCHAR2(50)
);

--drop table lbacsys.parent_and_child;

--------------------------------------------------
-- Function to put parentId and children ids value to table 
create or replace function create_pac_table
return varchar2
as
    pr_id varchar2(50);
    CURSOR c_source IS
        SELECT id FROM atv.parent;
    children varchar2(50);
begin 
    delete from parent_and_child;
    FOR r_source IN c_source LOOP
        -- Get the value from the source table
        pr_id := 'PR' || to_char(r_source.id);
        children := get_stdid_from_parent(pr_id);
        insert into parent_and_child (prid, childs) values (pr_id, children);
        
--        dbms_output.put_line(pr_id || ' ' || children);
    end loop;
    commit;
    return 1;
end;
--------------------------
-- CREATE FUNCTION FOR GETTING CURRENT ID OF THE USER
CREATE OR REPLACE FUNCTION get_stdid

RETURN VARCHAR2
AUTHID CURRENT_USER AS
    std_id VARCHAR2(100);
BEGIN
    SELECT USER INTO std_id FROM DUAL;
    RETURN std_id;
END;
/

--CREATE OR REPLACE FUNCTION get_course_id (
--    std_id VARCHAR2
--)
--RETURN VARCHAR2
--AS
--    res NUMBER;
--BEGIN
--    select id into res from atv.course where subject_id = get_subject_id_from_score(std_id) AND semester_id = 'HK223';
--    return res;
--END;
--/

------------------------------------------------------------------------------------

-- POLICY FUNCTION THAT USE FOR THE FIRST REQUIREMENT
create or replace function stdid(
    p_schema IN VARCHAR2,
    p_object IN VARCHAR2)
return VARCHAR2
AS
    std_id VARCHAR2(100);
    prefix VARCHAR2(100);
    child_id VARCHAR2(50);
    r_value varchar2(50);
BEGIN
    std_id := get_stdid();
    prefix := SUBSTR(std_id, 1, 2);
    if prefix = 'ST' then
        r_value := 'id = ' || substr(std_id, 4, 2);
        dbms_output.put_line('This is a student');
    elsif prefix = 'PR' then
        child_id := create_pac_table();
        select childs into child_id from parent_and_child where prid = std_id;
        r_value := 'id IN ' || '(' || child_id || ')';        
        dbms_output.put_line('This is a parent');
    elsif prefix = 'LB' then
        r_value := '1=1';
    else
        r_value := '1=0';
        dbms_output.put_line('This is a no one');
    end if;
    commit;
    dbms_output.put_line('Return value is: ' || r_value);
    RETURN r_value;
end;
/
------------------------------------------------------------------------------------

-- NOT ALLOW POLICY FUNCTION
create or replace function not_allow(
    p_schema IN VARCHAR2,
    p_object IN VARCHAR2)
return VARCHAR2
AS
BEGIN
    RETURN '1=0';
end;
/
------------------------------------------------------------------------------------

-- CREATE POLICY CAN MAKE THE USER SEE ONLY HIS/HER INFORMATION
begin 
    dbms_rls.add_policy
    (object_schema  => 'atv',
    object_name     => 'STUDENT',
    policy_name     => 'STUDENT_VIEW_INFOR',
    policy_function => 'stdid');
end;
/

begin 
    dbms_rls.drop_policy
    (object_schema  => 'atv',
    object_name     => 'STUDENT',
    policy_name     => 'STUDENT_VIEW_INFOR');
end;
/
------------------------------------------------------------------------------------

-- POLICY THAT USER CAN ONLY CHANGE HIS/HER ETHNIC, RELIGION AND EMAIL INFORMATION
begin 
    dbms_rls.add_policy
    (object_schema  => 'atv',
    object_name     => 'STUDENT',
    policy_name     => 'STUDENT_EDIT_INFOR_ALLOW',
    policy_function => 'stdid',
    statement_types => 'UPDATE',
    sec_relevant_cols => 'ethnic, religion, email');
end;
/

begin 
    dbms_rls.drop_policy
    (object_schema  => 'atv',
    object_name     => 'STUDENT',
    policy_name     => 'STUDENT_EDIT_INFOR_ALLOW');
end;
/
------------------------------------------------------------------------------------

-- POLICY THAT USER CAN ONLY CHANGE HIS/HER ETHNIC, RELIGION AND EMAIL INFORMATION
begin 
    dbms_rls.add_policy
    (object_schema  => 'atv',
    object_name     => 'STUDENT',
    policy_name     => 'STUDENT_EDIT_INFOR_NOT_ALLOW',
    policy_function => 'not_allow',
    statement_types => 'UPDATE',
    sec_relevant_cols => 'id, first_name, last_name, birth_date, gender, home_town, address, class_id, parent_id');
end;
/

--begin 
--    dbms_rls.drop_policy
--    (object_schema  => 'atv',
--    object_name     => 'STUDENT',
--    policy_name     => 'STUDENT_EDIT_INFOR_NOT_ALLOW');
--end;
--/
------------------------------------------------------------------------------------

-- POLICY THAT ALLOW STUDENT JUST SEE HIS/HER SCORE
begin 
    dbms_rls.add_policy
    (object_schema  => 'atv',
    object_name     => 'COURSE_SCORE',
    policy_name     => 'STUDENT_VIEW_SCORE',
    policy_function => 'stdid');
end;
/
-------------------------------
-- COMMIT THE STATE
commit;
------------------------------
--begin 
--    dbms_rls.drop_policy
--    (object_schema  => 'atv',
--    object_name     => 'COURSE_SCORE',
--    policy_name     => 'STUDENT_VIEW_SCORE');
--end;
--/
------------------------------------------------------------------------------------

--create or replace function get_subject_id_from_course(prid varchar2)
--return varchar2
--as
--    v_concatenated_values varchar2(1000);
--begin 
--    select listagg(subject_id, ', ') within group (Order by subject_id) 
--        into v_concatenated_values from atv.course where teacher_id = substr(prid, 3, 2);
--    return v_concatenated_values;
--end;
--/

---------------------------------------------
----Update policy
--begin 
--    dbms_rls.add_policy
--    (object_schema  => 'atv',
--    object_name     => 'COURSE_SCORE',
--    policy_name     => 'TEACHER_EDIT_SCORE',
--    policy_function => 'stdid',
--    statement_types => 'UPDATE,INSERT',
--    sec_relevant_cols => 'midterm,final,score');
--end;