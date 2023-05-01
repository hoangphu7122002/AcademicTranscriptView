-- grant all privileges to lbacsys identified by lbacsys;
-- grant execute on dbms_rls to lbacsys;
-- grant execute on SA_SYSDBA to lbacsys;
-- grant exempt access policy to lbacsys;
-- ALTER USER lbacsys IDENTIFIED BY lbacsys ACCOUNT UNLOCK;
-- CONN lbacsys/lbacsys
---------------

SET SERVEROUTPUT ON

---------------------------- SETTING FOR VPD POLICY ------------------------------
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
-- FUNCTION TO GET COURSE ID FROM TEACHER ID
-- DROP FUNCTION get_courseId_from_teacherId
CREATE OR REPLACE FUNCTION get_courseid_from_teacherid(tchid VARCHAR2)
RETURN VARCHAR2
AS
    v_concatenated_values VARCHAR2(100);
BEGIN 
    SELECT LISTAGG(ID, ', ') WITHIN GROUP (ORDER BY ID) 
        INTO v_concatenated_values FROM atv.course WHERE teacher_id = substr(tchid, 4, 2);
    RETURN v_concatenated_values;
END;
/

-- THIS FOR TESTING
--select listagg(id, ', ') within group (Order by id) from atv.course where teacher_id = substr('TCH15', 4, 2);
--
--
--begin
--    dbms_output.put_line(get_courseId_from_teacherId('TCH15'));
--end;
--/

---------------------------------------------
-- FUNCTION TO GET CHILDREN ID FROM PARENT ID

--drop function get_stdid_from_parent;

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

-------------------------------------
-- CREATE THE HELPER TABLE TO STORE PARENTID AND CHILDREN ID
-- drop table lbacsys.parent_and_child_2;
CREATE TABLE parent_and_child_2 
(
    prid            VARCHAR2(10),
    childs          VARCHAR2(50)
);

--- THIS FOR TEST

--SELECT * FROM parent_and_child_2;

--declare 
--    pr_id VARCHAR2(50);
--    CURSOR c_source IS
--        SELECT ID FROM atv.PARENT;
--    children VARCHAR2(50);
--begin
--    delete from parent_and_child_2;
--    FOR r_source IN c_source LOOP
--        pr_id := 'PR' || to_char(r_source.ID);
--        -- Get the value from the source table
--        children := get_stdid_from_parent(pr_id);
--        INSERT INTO parent_and_child_2 (prid, childs) VALUES (pr_id, children);
--        
--        dbms_output.put_line(pr_id || ' ' || children);
--    END LOOP;
--end;

--------------------------------------------------
-- Function to put parentId and children ids value to table 

--drop function create_pac_table;

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
    RETURN 1;
END;
--COMMIT;
/


------ THIS IS FOR CHECKING
--DECLARE
--    a number;
--begin
--    a := create_pac_table();
--end;
--/

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

-- POLICY FUNCTION THAT USE FOR THE FIRST AND SECOND REQUIREMENT

-- DROP FUNCTION stdid_for_course_score;
-- DROP FUNCTION stdid_for_student_table;

CREATE OR REPLACE FUNCTION stdid_for_course_score(
    p_schema IN VARCHAR2,
    p_object IN VARCHAR2)
RETURN VARCHAR2
AS
    std_id VARCHAR2(100);
    prefix VARCHAR2(100);
    child_id VARCHAR2(50);
    r_value VARCHAR2(50);
    check_for_form_teacher NUMBER := 0;
BEGIN
    std_id := get_stdid();
    prefix := substr(std_id, 1, 2);
    IF prefix = 'ST' THEN
        r_value := 'STUDENT_ID = ' || substr(std_id, 4, 2);
        dbms_output.put_line('This is a student');
    ELSIF prefix = 'PR' THEN
        child_id := create_pac_table();
        SELECT childs INTO child_id FROM parent_and_child_2 WHERE prid = std_id;
        r_value := 'STUDENT_ID IN ' || '(' || child_id || ')';        
        dbms_output.put_line('This is a parent');
    ELSIF prefix = 'TC' THEN
        SELECT COUNT(*) INTO check_for_form_teacher FROM atv.CLASS WHERE form_teacher_id = substr(std_id, 4, 2);
        IF check_for_form_teacher > 0 THEN
            dbms_output.put_line('This is a form teacher');
            r_value := '1=1';
        ELSE
            dbms_output.put_line('This is a teacher');
            r_value := 'course_id IN ' || '(' || get_courseid_from_teacherid(std_id) || ')';    
    --        r_value := get_courseId_from_teacherId(std_id);
        END IF;
    ELSE
        r_value := '1=1';
        dbms_output.put_line('This is a no one');
    END IF;
    dbms_output.put_line('Return value is: ' || r_value);
    RETURN r_value;
END;
/

CREATE OR REPLACE FUNCTION stdid_for_student_table(
    p_schema IN VARCHAR2,
    p_object IN VARCHAR2)
RETURN VARCHAR2
AS
    std_id VARCHAR2(20);
    prefix VARCHAR2(20);
    r_value VARCHAR2(50);
BEGIN
    std_id := get_stdid();
    prefix := substr(std_id, 1, 2);
    IF prefix = 'ST' THEN
        r_value := 'id = ' || substr(std_id, 4, 2);
        dbms_output.put_line('This is a student');
    ELSE
        r_value := '1=1';
        dbms_output.put_line('This is no one');
    END IF;
    dbms_output.put_line('Return value is: ' || r_value);
    RETURN r_value;
END;
/

------------------------------------------------------------------------------------

-- NOT ALLOW POLICY FUNCTION
-- drop function not_allow;
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

---------------------------- APPLY VPD POLICY ------------------------------

-- CREATE POLICY CAN MAKE THE USER SEE ONLY HIS/HER INFORMATION
BEGIN 
    dbms_rls.add_policy
    (object_schema  => 'atv',
    object_name     => 'STUDENT',
    policy_name     => 'STUDENT_VIEW_INFOR',
    policy_function => 'stdid_for_student_table');
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
    policy_function => 'stdid_for_student_table',
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
    policy_function => 'stdid_for_course_score',
    statement_types => 'SELECT');
END;
/
----
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