--CONN sec_admin/secadmin;

-- APPLY POLICY
BEGIN
sa_policy_admin.apply_table_policy
    (policy_name => 'MANAGE_SCORE',
    schema_name => 'ATV',
    table_name => 'COURSE_SCORE',
    table_options => 'NO_CONTROL');
END;
/
-----------------------------
CREATE OR REPLACE FUNCTION GET_ID_CLS(
    CLASS_ID IN INT
)
RETURN VARCHAR2
IS
BEGIN
    IF CLASS_ID <= 9 THEN
        RETURN 'CLS0' || TO_CHAR(CLASS_ID);
    ELSE
        RETURN 'CLS' || TO_CHAR(CLASS_ID);
    END IF;
END;
/
--SET SERVEROUTPUT ON;
--BEGIN
--    dbms_output.put_line(GET_ID_CLS(10));
--END;

CREATE OR REPLACE PROCEDURE ASSIGN_DATA_LABEL (
    courseId IN INT,
    studentId IN INT
)
IS
    semesterCol VARCHAR(512);
    shortnameCol VARCHAR(512);
    class_ele INT;
    label1 VARCHAR(512);

BEGIN
    select semester into semesterCol from atv.course where id = courseId;
--    dbms_output.put_line(semesterCol);
    select short_name into shortnameCol from atv.subject where id in (
        select subject_id 
        from atv.course c
        where c.id = courseId);

    SELECT class_id
    INTO class_ele
    FROM atv.student
    WHERE id = studentId;
    
    label1 := 'V:'|| semesterCol ||':'|| shortnameCol ||','|| GET_ID_CLS(class_ele);
    dbms_output.put_line(to_char(studentId) || ': ' || label1);    
    UPDATE atv.course_score SET label_tag = char_to_label('MANAGE_SCORE',label1) WHERE course_id=courseId and student_id=studentId;
END;
/



--select semester from atv.course where id = 12;
--select short_name from atv.subject where id in (
--        select subject_id 
--        from atv.course c
--        where c.id = 12);
--select short_name from atv.subject where id = 1;
--CREATE OR REPLACE PROCEDURE ASSIGN_ALL_DATA
--IS
--    Type idList IS TABLE OF atv.course_score%ROWTYPE;
--    id_data idList := idList();
--BEGIN
--    SELECT * BULK COLLECT INTO id_data FROM atv.course_score;
--    FOR i in (SELECT course_id,student_id FROM TABLE(id_data)) LOOP
--        ASSIGN_DATA_LABEL(i.course_id,i.student_id);
--    END LOOP;
--END;

--CREATE OR REPLACE FUNCTION avg_score(
--    GROUP BY student_id INT,
--)
--RETURN REAL
--IS
--    tu_sum REAL := 0;
--    mau_sum REAL := 0;
--BEGIN
--    SELECT cs.score, s.credits INTO res_table
--    FROM atv.course_score cs, atv.course c, atv.subject s
--    WHERE cs.student_id = student_id and c.id = cs.course_id and s.id = c.subject_id
--    FOR rec in (select score, credits from res_table) LOOP 
--        tu_sum := tu_sum + rec.score * rec.credits
--        mau_sum := mau_sum + rec.credits
--    END LOOP;
--    
--    tu_sum := tu_sum / mau_sum;
--    RETURN tu_sum;
--END;
    