-- grant all privileges to lbacsys identified by lbacsys;
-- grant execute on dbms_rls to lbacsys;
-- grant execute on SA_SYSDBA to lbacsys;
-- grant exempt access policy to lbacsys;
-- ALTER USER lbacsys IDENTIFIED BY lbacsys ACCOUNT UNLOCK;
-- CONN lbacsys/lbacsys

select LISTAGG(ID, ', ') WITHIN GROUP (ORDER BY ID)  from atv.student where parent_id = 2;
---------------

SET SERVEROUTPUT ON

--------------------------
-- CREATE FUNCTION FOR GETTING CURRENT ID OF THE USER
CREATE OR REPLACE FUNCTION get_stdid

RETURN VARCHAR2
AUTHID CURRENT_USER AS
    std_id VARCHAR2(100);
BEGIN
    SELECT USER INTO std_id FROM dual;
    RETURN std_id;
END;
/
----------------------------------------------------
-- FUNCTION TO GET CHILDREN ID FROM PARENT ID
CREATE OR REPLACE FUNCTION get_stdid_from_parent(
    prid VARCHAR2)
RETURN VARCHAR2
AS
    v_concatenated_values VARCHAR2(1000);
BEGIN 
    SELECT LISTAGG(ID, ', ') WITHIN GROUP (ORDER BY ID) 
        INTO v_concatenated_values FROM atv.student WHERE parent_id = substr(prid, 3, 2);
    RETURN v_concatenated_values;
END;
/

drop function get_stdid_from_parent;

begin
    dbms_output.put_line(get_stdid_from_parent('PR2'));
end;
/
-------------------------------------
-- CREATE THE HELPER TABLE TO STORE PARENTID AND CHILDREN ID
CREATE TABLE parent_and_child_2 
(
    prid            VARCHAR2(10),
    childs          VARCHAR2(50)
);
----
drop table lbacsys.parent_and_child_2;

declare 
    CURSOR c_source IS
        SELECT ID FROM atv.PARENT;
    children VARCHAR2(50);
begin
    FOR r_source IN c_source LOOP
        -- Get the value from the source table
        children := get_stdid_from_parent(pr_id);
        INSERT INTO parent_and_child_2 (prid, childs) VALUES (pr_id, children);
        
--        dbms_output.put_line(pr_id || ' ' || children);
    END LOOP;
end;

--------------------------------------------------
-- Function to put parentId and children ids value to table 
CREATE OR REPLACE FUNCTION create_pac_table
RETURN VARCHAR2
AS
    pr_id VARCHAR2(50);
    CURSOR c_source IS
        SELECT ID FROM atv.PARENT;
    children VARCHAR2(50);
BEGIN 
    DELETE FROM parent_and_child_2;
    FOR r_source IN c_source LOOP
        -- Get the value from the source table
        pr_id := 'PR' || to_char(r_source.ID);
        children := get_stdid_from_parent(pr_id);
        INSERT INTO parent_and_child_2 (prid, childs) VALUES (pr_id, children);
        
--        dbms_output.put_line(pr_id || ' ' || children);
    END LOOP;
    COMMIT;
    RETURN 1;
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
CREATE OR REPLACE FUNCTION stdid(
    p_schema IN VARCHAR2,
    p_object IN VARCHAR2)
RETURN VARCHAR2
AS
    std_id VARCHAR2(100);
    prefix VARCHAR2(100);
    child_id VARCHAR2(50);
    r_value VARCHAR2(50);
BEGIN
    std_id := get_stdid();
    prefix := substr(std_id, 1, 2);
    IF prefix = 'ST' THEN
        r_value := 'id = ' || substr(std_id, 4, 2);
        dbms_output.put_line('This is a student');
    ELSIF prefix = 'PR' THEN
        child_id := create_pac_table();
        SELECT childs INTO child_id FROM parent_and_child_2 WHERE prid = std_id;
        r_value := 'id IN ' || '(' || child_id || ')';        
        dbms_output.put_line('This is a parent');
    ELSIF prefix = 'LB' THEN
        r_value := '1=1';
    ELSE
        r_value := '1=1';
        dbms_output.put_line('This is a no one');
    END IF;
    COMMIT;
    dbms_output.put_line('Return value is: ' || r_value);
    RETURN r_value;
END;
/
------------------------------------------------------------------------------------

-- NOT ALLOW POLICY FUNCTION
CREATE OR REPLACE FUNCTION not_allow(
    p_schema IN VARCHAR2,
    p_object IN VARCHAR2)
RETURN VARCHAR2
AS
BEGIN
    RETURN '1=0';
END;
/
------------------------------------------------------------------------------------

-- CREATE POLICY CAN MAKE THE USER SEE ONLY HIS/HER INFORMATION
BEGIN 
    dbms_rls.add_policy
    (object_schema  => 'atv',
    object_name     => 'STUDENT',
    policy_name     => 'STUDENT_VIEW_INFOR',
    policy_function => 'stdid');
END;
/

--BEGIN 
--    dbms_rls.drop_policy
--    (object_schema  => 'atv',
--    object_name     => 'STUDENT',
--    policy_name     => 'STUDENT_VIEW_INFOR');
--END;
--/
------------------------------------------------------------------------------------

-- POLICY THAT USER CAN ONLY CHANGE HIS/HER ETHNIC, RELIGION AND EMAIL INFORMATION
BEGIN 
    dbms_rls.add_policy
    (object_schema  => 'atv',
    object_name     => 'STUDENT',
    policy_name     => 'STUDENT_EDIT_INFOR_ALLOW',
    policy_function => 'stdid',
    statement_types => 'UPDATE',
    sec_relevant_cols => 'ethnic, religion, email');
END;
/

--BEGIN 
--    dbms_rls.drop_policy
--    (object_schema  => 'atv',
--    object_name     => 'STUDENT',
--    policy_name     => 'STUDENT_EDIT_INFOR_ALLOW');
--END;
--/
------------------------------------------------------------------------------------

-- POLICY THAT USER CAN ONLY CHANGE HIS/HER ETHNIC, RELIGION AND EMAIL INFORMATION
BEGIN 
    dbms_rls.add_policy
    (object_schema  => 'atv',
    object_name     => 'STUDENT',
    policy_name     => 'STUDENT_EDIT_INFOR_NOT_ALLOW',
    policy_function => 'not_allow',
    statement_types => 'UPDATE',
    sec_relevant_cols => 'id, first_name, last_name, birth_date, gender, home_town, address, class_id, parent_id');
END;
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
BEGIN 
    dbms_rls.add_policy
    (object_schema  => 'atv',
    object_name     => 'COURSE_SCORE',
    policy_name     => 'STUDENT_VIEW_SCORE',
    policy_function => 'stdid');
END;
/
--
--begin 
--    dbms_rls.drop_policy
--    (object_schema  => 'atv',
--    object_name     => 'COURSE_SCORE',
--    policy_name     => 'STUDENT_VIEW_SCORE');
--end;
--/
------------------------------------------------------------------------------------
-------------------------------
-- COMMIT THE STATE
COMMIT;
------------------------------

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