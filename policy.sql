-- EXAMPLE POLICY
CONN lbacsys/lbacsys;

BEGIN
    SA_SYSDBA.CREATE_POLICY (
        policy_name => 'READ_STUDENTS',
        column_name => 'OLS_COLUMN');
END;
/

-- Auto create new role READ_STUDENTS_DBA.
GRANT read_students_dba TO sec_admin; -- may have many policies here

GRANT execute ON sa_components TO sec_admin;
GRANT execute ON sa_label_admin TO sec_admin;
GRANT execute ON sa_policy_admin TO sec_admin;

GRANT read_students_dba TO atv_sec; -- may have many policies here
GRANT execute ON sa_user_admin TO atv_sec;

-- COMPONENTS OF LABEL
CONN sec_admin/secadmin;

EXECUTE sa_components.create_level
    ('READ_STUDENTS',100,'PUB','PUBLIC');
EXECUTE sa_components.create_level
    ('READ_STUDENTS',200,'CONF','CONFIDENTIAL');

-- EXECUTE sa_components.create_compartment
--     ('READ_STUDENTS',100,'AAO','TRAINDEPT');
-- EXECUTE sa_components.create_compartment
--     ('READ_STUDENTS',200,'FCT','FACULTY');  
-- EXECUTE sa_components.create_compartment
--     ('READ_STUDENTS',300,'PR','PARENT');
-- EXECUTE sa_components.create_compartment
--     ('READ_STUDENTS',400,'STU','STUDENT');

EXECUTE sa_components.create_compartment
    ('READ_STUDENTS',100,'PER','PERSONAL');
EXECUTE sa_components.create_compartment
    ('READ_STUDENTS',200,'SCR','SCORE');

EXECUTE sa_components.create_group 
    ('READ_STUDENTS',100,'BK','BACHKHOA',NULL);
EXECUTE sa_components.create_group 
    ('READ_STUDENTS',200,'PDT','PHONGDAOTAO','BK');
EXECUTE sa_components.create_group 
    ('READ_STUDENTS',300,'FCT','FACULTY','BK');
EXECUTE sa_components.create_group 
    ('READ_STUDENTS',400,'STU','STUDENT',NULL);

-- ACTUAL SYSTEM LABELS
EXECUTE sa_label_admin.create_label
    ('READ_STUDENTS',10000,'PUB');
EXECUTE sa_label_admin.create_label
    ('READ_STUDENTS',12040,'PUB:SCR:STU');
EXECUTE sa_label_admin.create_label
    ('READ_STUDENTS',20000,'CONF');
EXECUTE sa_label_admin.create_label
    ('READ_STUDENTS',20040,'CONF:PER:STU');
    -- CONF:PER

-- DATA LABELS, example for user std17, role: std, pr, tc, form_tc, head_dept, dean, pdt
CONN atv_sec/atvsec;
BEGIN
sa_user_admin.set_levels
    (policy_name => 'READ_STUDENTS',
    user_name => 'STD17',
    max_level => 'CONF',
    min_level => 'PUB',
    def_level => 'CONF',
    row_level => 'CONF');

sa_user_admin.set_compartments
    (policy_name => 'READ_STUDENTS',
    user_name => 'STD17',
    read_comps => 'PER,SCR',
    write_comps => 'PER',
    def_comps => 'SRC',
    row_comps => 'SRC');

sa_user_admin.set_groups
    (policy_name => 'READ_STUDENTS',
    user_name => 'STD17',
    read_groups => 'PDT,FCT,STU',
    write_groups => 'PDT,FCT',
    def_groups => 'PDT,FCT',
    row_groups => 'PDT,FCT');
END;
/

-- APPLY POLICY
CONN sec_admin/secadmin;
BEGIN
sa_policy_admin.apply_table_policy
    (policy_name => 'READ_STUDENTS',
    schema_name => 'ATV',
    table_name => 'COURSE_SCORE',
    table_options => 'NO_CONTROL');
END;
/

-- CHECK IF POLICY HAS BEEN APPLIED TO TABLE
CONN atv/atv;
DESCRIBE course_score;

-- ASSIGN LABEL FOR DATA
GRANT select, insert, update ON course_score TO sec_admin;

CONN sec_admin/secadmin;
UPDATE atv.course_score SET ols_column = char_to_label('READ_STUDENTS', 'CONF');
UPDATE atv.course_score SET ols_column = char_to_label('REA_STUDENTS', '') WHERE course_id=
-- may have many more update here

COMMIT;

-- SELECT * FROM atv.STUDENT WHERE student.id=<id>;

-- RE-ACTIVATE POLICY
BEGIN
sa_policy_admin.remove_table_policy
    (policy_name => 'READ_STUDENTS',
    schema_name => 'ATV',
    table_name => 'COURSE_SCORE');
sa_policy_admin.apply_table_policy
    (policy_name => 'READ_STUDENTS',
    schema_name => 'ATV',
    table_name => 'COURSE_SCORE',
    table_options => 'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL');
END;
/





