-- EXAMPLE POLICY
CONN lbacsys/lbacsys;

BEGIN
    SA_SYSDBA.CREATE_POLICY (
        policy_name => 'MANAGE_SCORE',
        column_name => 'LABEL_TAG');
END;
/

-- Auto create new role MANAGE_SCORE_DBA.
GRANT MANAGE_SCORE_DBA TO sec_admin; -- may have many policies here

GRANT execute ON sa_components TO sec_admin;
GRANT execute ON sa_label_admin TO sec_admin;
GRANT execute ON sa_policy_admin TO sec_admin;

GRANT MANAGE_SCORE_DBA TO atv_sec; -- may have many policies here
GRANT execute ON sa_user_admin TO atv_sec;

-- COMPONENTS OF LABEL
CONN sec_admin/secadmin;

EXECUTE sa_components.create_level('MANAGE_SCORE',10, 'NA', 'NOT_ALLOW');
EXECUTE sa_components.create_level('MANAGE_SCORE',20, 'V', 'VIEW');
EXECUTE sa_components.create_level('MANAGE_SCORE',30, 'E',' EDIT');

EXECUTE sa_components.create_compartment('MANAGE_SCORE',10,'SM1','SEMESTER_1');
EXECUTE sa_components.create_compartment('MANAGE_SCORE',20,'SM2','SEMESTER_2');
EXECUTE sa_components.create_compartment('MANAGE_SCORE',30,'SM3','SEMESTER_3');
EXECUTE sa_components.create_compartment('MANAGE_SCORE',40,'SM4','SEMESTER_4');
EXECUTE sa_components.create_compartment('MANAGE_SCORE',50,'SM5','SEMESTER_5');
EXECUTE sa_components.create_compartment('MANAGE_SCORE',60,'SM6','SEMESTER_6');
EXECUTE sa_components.create_compartment('MANAGE_SCORE',70,'SM7','SEMESTER_7');
EXECUTE sa_components.create_compartment('MANAGE_SCORE',80,'SM8','SEMESTER_8');
EXECUTE sa_components.create_compartment('MANAGE_SCORE',90,'SM9','SEMESTER_9');

EXECUTE sa_components.create_group('MANAGE_SCORE',1000,'BK','BACH_KHOA', NULL);
EXECUTE sa_components.create_group('MANAGE_SCORE',2000,'PDT','PHONG_DAO_TAO','BK');
EXECUTE sa_components.create_group('MANAGE_SCORE',3000,'CLS','CLASS','BK');

EXECUTE sa_components.create_group('MANAGE_SCORE',2100,'CSE','Computer_Science_Engineer','PDT');
EXECUTE sa_components.create_group('MANAGE_SCORE',2110,'CS','Computer_Science','CSE');
EXECUTE sa_components.create_group('MANAGE_SCORE',2120,'CE','Computer_Engineer','CSE');
EXECUTE sa_components.create_group('MANAGE_SCORE',2111,'PPL','Principle_Programming_Language','CS');
EXECUTE sa_components.create_group('MANAGE_SCORE',2112,'DS','Database_System','CS');
EXECUTE sa_components.create_group('MANAGE_SCORE',2113,'OS','Operating_System','CS');
EXECUTE sa_components.create_group('MANAGE_SCORE',2121,'LDP','Logic_Design_Project','CE');
EXECUTE sa_components.create_group('MANAGE_SCORE',2122,'CA','Computer_Architecture','CE');
EXECUTE sa_components.create_group('MANAGE_SCORE',2123,'EDC','Electronic_Device_Circuit','CE');

EXECUTE sa_components.create_group('MANAGE_SCORE',2200,'EEE','Electrical_and_Electronics_Engineering','PDT');
EXECUTE sa_components.create_group('MANAGE_SCORE',2210,'EE','Electricity_Engineering','EEE');
EXECUTE sa_components.create_group('MANAGE_SCORE',2220,'CEA','Control_engineering_automation','EEE');
EXECUTE sa_components.create_group('MANAGE_SCORE',2211,'ASP','Analog_Signal_Processing','EE');
EXECUTE sa_components.create_group('MANAGE_SCORE',2212,'UPT','Univ_Physics_Thermal_Phys','EE');
EXECUTE sa_components.create_group('MANAGE_SCORE',2213,'IEF','Intro_to_Electromagnetic_Field','EE');
EXECUTE sa_components.create_group('MANAGE_SCORE',2221,'PE','Power_Electronics','CEA');
EXECUTE sa_components.create_group('MANAGE_SCORE',2222,'EM','Electric_Machinery','CEA');
EXECUTE sa_components.create_group('MANAGE_SCORE',2223,'IQC','Industrial_Quality_Control','CEA');

EXECUTE sa_components.create_group('MANAGE_SCORE',2300,'AS','APPLIED_SCIENCE','PDT');
EXECUTE sa_components.create_group('MANAGE_SCORE',2310,'APM','APPLIED_MATH','AS');
EXECUTE sa_components.create_group('MANAGE_SCORE',2320,'PTH','POLITICAL_THEORY','AS');
EXECUTE sa_components.create_group('MANAGE_SCORE',2311,'GCH','GENERAL_CHEMISTRY','APM');
EXECUTE sa_components.create_group('MANAGE_SCORE',2312,'CL1','CALCULUS_1','APM');
EXECUTE sa_components.create_group('MANAGE_SCORE',2313,'CL2','CALCULUS_2','APM');
EXECUTE sa_components.create_group('MANAGE_SCORE',2321,'ILS','INTRODUCTION_LAW_SYSTEM','PTH');
EXECUTE sa_components.create_group('MANAGE_SCORE',2322,'ENM','ECONOMICS','PTH');
EXECUTE sa_components.create_group('MANAGE_SCORE',2323,'PML','PRINCIPLES_OF_MARXISM_LENINISM','PTH');

EXECUTE sa_components.create_group('MANAGE_SCORE',3000,'CLS','CLASS','BK');
EXECUTE sa_components.create_group('MANAGE_SCORE',3010,'CLS01','CLASS_01','CLS');
EXECUTE sa_components.create_group('MANAGE_SCORE',3020,'CLS02','CLASS_02','CLS');
EXECUTE sa_components.create_group('MANAGE_SCORE',3030,'CLS03','CLASS_03','CLS');
EXECUTE sa_components.create_group('MANAGE_SCORE',3040,'CLS04','CLASS_04','CLS');
EXECUTE sa_components.create_group('MANAGE_SCORE',3050,'CLS05','CLASS_05','CLS');
EXECUTE sa_components.create_group('MANAGE_SCORE',3060,'CLS06','CLASS_06','CLS');
EXECUTE sa_components.create_group('MANAGE_SCORE',3070,'CLS07','CLASS_07','CLS');
EXECUTE sa_components.create_group('MANAGE_SCORE',3080,'CLS08','CLASS_08','CLS');
EXECUTE sa_components.create_group('MANAGE_SCORE',3090,'CLS09','CLASS_09','CLS');
EXECUTE sa_components.create_group('MANAGE_SCORE',3100,'CLS10','CLASS_10','CLS');

-- ACTUAL SYSTEM LABELS
-- EXECUTE sa_label_admin.create_label
--     ('MANAGE_SCORE',10000,'PUB');
-- EXECUTE sa_label_admin.create_label
--     ('MANAGE_SCORE',12040,'PUB:SCR:STU');
-- EXECUTE sa_label_admin.create_label
--     ('MANAGE_SCORE',20000,'CONF');
-- EXECUTE sa_label_admin.create_label
--     ('MANAGE_SCORE',20040,'CONF:PER:STU');
--     -- CONF:PER

-- DATA LABELS
CONN atv_sec/atvsec;
-- BEGIN
-- sa_user_admin.set_levels
--     (policy_name => 'MANAGE_SCORE',
--     user_name => 'STD17',
--     max_level => 'CONF',
--     min_level => 'PUB',
--     def_level => 'CONF',
--     row_level => 'CONF');

-- sa_user_admin.set_compartments
--     (policy_name => 'MANAGE_SCORE',
--     user_name => 'STD17',
--     read_comps => 'PER,SCR',
--     write_comps => 'PER',
--     def_comps => 'SRC',
--     row_comps => 'SRC');

-- sa_user_admin.set_groups
--     (policy_name => 'MANAGE_SCORE',
--     user_name => 'STD17',
--     read_groups => 'PDT,FCT,STU',
--     write_groups => 'PDT,FCT',
--     def_groups => 'PDT,FCT',
--     row_groups => 'PDT,FCT');
-- END;
-- /

-- APPLY POLICY
CONN sec_admin/secadmin;
BEGIN
sa_policy_admin.apply_table_policy
    (policy_name => 'MANAGE_SCORE',
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
UPDATE atv.course_score SET label_tag = char_to_label('MANAGE_SCORE', 'CONF');
-- may have many more update here

COMMIT;

-- SELECT * FROM atv.STUDENT WHERE student.id=<id>;

-- RE-ACTIVATE POLICY
BEGIN
sa_policy_admin.remove_table_policy
    (policy_name => 'MANAGE_SCORE',
    schema_name => 'ATV',
    table_name => 'COURSE_SCORE');
sa_policy_admin.apply_table_policy
    (policy_name => 'MANAGE_SCORE',
    schema_name => 'ATV',
    table_name => 'COURSE_SCORE',
    table_options => 'READ_CONTROL,WRITE_CONTROL,CHECK_CONTROL');
END;
/





