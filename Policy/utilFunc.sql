1CREATE OR REPLACE FUNCTION GET_ID_CLS(
    CLASS_ID IN INT
)
RETURN VARCHAR(5)
BEGIN
    IF CLASS_ID <= 9 THEN
        RETURN CONCAT("CLS0",TO_CHAR(CLASS_ID))
    ELSE
        RETURN CONCAT("CLS",TO_CHAR(CLASS_ID))
    END IF;
END;

CREATE OR REPLACE PROCEDURE ASSIGN_DATA_LABEL (
    course_id IN INT,
    student_id IN INT
)
AS
    label VARCHAR(512);
    semester_list VARCHAR(512);
    subject_list INT;
    short_name_list VARCHAR(512);
    class_ele INT;
    label VARCHAR(512);
BEGIN
    SELECT semester, subject_id
    INTO semester_list, subject_list
    FROM atv.course 
    WHERE id = course_id;
    
    SELECT short_name 
    INTO short_name_list
    FROM atv.subject
    WHERE id IN subject_list;
    
    SELECT class_id
    INTO class_ele
    FROM atv.student
    WHERE id = student_id;
    
    label := 'V:'||LISTAGG(semester_list,',')||
             ': '||LISTAGG(short_name_list,',') ||
             ': '||GET_ID_CLS(class_ele);
    
    UPDATE atv.course_score SET label_tag = char_to_label(
        'MANAGE_SCORE',label
    );
    
END;
    
CREATE OR REPLACE PROCEDURE ASSIGN_ALL_DATA()
IS
    Type idList IS TABLE OF atv.course_score%ROWTYPE;
    id_data idList := idList();
BEGIN
    SELECT * BULK COLLECT INTO id_data FROM atv.course_score;
    FOR i in (SELECT course_id,student_id FROM TABLE(id_data)) LOOP
        ASSIGN_DATA_LABEL(i.course_id,i.student_id);
    END LOOP;
END;
    
CREATE OR REPLACE FUNCTION avg_score(GROUP BY
    student_id INT,
)
RETURN REAL
IS
    tu_sum REAL := 0;
    mau_sum REAL := 0;
BEGIN
    SELECT cs.score, s.credits INTO res_table
    FROM atv.course_score cs, atv.course c, atv.subject s
    WHERE cs.student_id = student_id and c.id = cs.course_id and s.id = c.subject_id
    FOR rec in (select score, credits from res_table) LOOP 
        tu_sum := tu_sum + rec.score * rec.credits
        mau_sum := mau_sum + rec.credits
    END LOOP;
    
    tu_sum := tu_sum / mau_sum;
    RETURN tu_sum;
END;
                

