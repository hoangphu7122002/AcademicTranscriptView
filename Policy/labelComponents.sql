
--CONN lbacsys/lbacsys;

BEGIN
    SA_SYSDBA.CREATE_POLICY (
        policy_name => 'MANAGE_SCORE',
        column_name => 'LABEL_TAG');
END;
/
--
--drop role MANAGE_SCORE_DBA;
--begin
--    SA_SYSDBA.DROP_POLICY(
--        policy_name => 'MANAGE_SCORE',
--        drop_column => TRUE
--    );
--end;
--/
-- Auto create new role MANAGE_SCORE_DBA.
GRANT MANAGE_SCORE_DBA TO sec_admin; -- may have many policies here

GRANT execute ON sa_components TO sec_admin;
GRANT execute ON sa_label_admin TO sec_admin;
GRANT execute ON sa_policy_admin TO sec_admin;

GRANT MANAGE_SCORE_DBA TO atv_sec; -- may have many policies here
GRANT execute ON sa_user_admin TO atv_sec;

-- COMPONENTS OF LABEL
-- CONN sec_admin/secadmin;


EXECUTE sa_components.create_level('MANAGE_SCORE',  10, 'NA', 'NOT_ALLOW');
EXECUTE sa_components.create_level('MANAGE_SCORE',  20, 'V', 'VIEW');
EXECUTE sa_components.create_level('MANAGE_SCORE',  30, 'E',' EDIT');

-- EXECUTE sa_components.alter_compartment('MANAGE_SCORE',10,'HK201','SEMESTER_1');
-- EXECUTE sa_components.alter_compartment('MANAGE_SCORE',20,'HK202','SEMESTER_2');
-- EXECUTE sa_components.alter_compartment('MANAGE_SCORE',30,'HK203','SEMESTER_3');
-- EXECUTE sa_components.alter_compartment('MANAGE_SCORE',40,'HK211','SEMESTER_4');
-- EXECUTE sa_components.alter_compartment('MANAGE_SCORE',50,'HK212','SEMESTER_5');
-- EXECUTE sa_components.alter_compartment('MANAGE_SCORE',60,'HK213','SEMESTER_6');
-- EXECUTE sa_components.alter_compartment('MANAGE_SCORE',70,'HK221','SEMESTER_7');
-- EXECUTE sa_components.alter_compartment('MANAGE_SCORE',80,'HK222','SEMESTER_8');
-- EXECUTE sa_components.alter_compartment('MANAGE_SCORE',90,'HK223','SEMESTER_9');

EXECUTE sa_components.create_compartment('MANAGE_SCORE',10,'HK201','SEMESTER_1');
EXECUTE sa_components.create_compartment('MANAGE_SCORE',20,'HK202','SEMESTER_2');
EXECUTE sa_components.create_compartment('MANAGE_SCORE',30,'HK203','SEMESTER_3');
EXECUTE sa_components.create_compartment('MANAGE_SCORE',40,'HK211','SEMESTER_4');
EXECUTE sa_components.create_compartment('MANAGE_SCORE',50,'HK212','SEMESTER_5');
EXECUTE sa_components.create_compartment('MANAGE_SCORE',60,'HK213','SEMESTER_6');
EXECUTE sa_components.create_compartment('MANAGE_SCORE',70,'HK221','SEMESTER_7');
EXECUTE sa_components.create_compartment('MANAGE_SCORE',80,'HK222','SEMESTER_8');
EXECUTE sa_components.create_compartment('MANAGE_SCORE',90,'HK223','SEMESTER_9');

EXECUTE sa_components.create_group('MANAGE_SCORE',1000,'BK','BACH_KHOA', NULL);
EXECUTE sa_components.create_group('MANAGE_SCORE',2000,'PDT','PHONG_DAO_TAO','BK');
EXECUTE sa_components.create_group('MANAGE_SCORE',3000,'CLS','CLASS','BK');

EXECUTE sa_components.create_group('MANAGE_SCORE',2100,'CSE','Computer_Science_Engineer','PDT');
EXECUTE sa_components.create_group('MANAGE_SCORE',2200,'EEE','Electrical_and_Electronics_Engineering','PDT');
EXECUTE sa_components.create_group('MANAGE_SCORE',2300,'AS','APPLIED_SCIENCE','PDT');

EXECUTE sa_components.create_group('MANAGE_SCORE',2110,'CS','Computer_Science','CSE');
EXECUTE sa_components.create_group('MANAGE_SCORE',2120,'CE','Computer_Engineer','CSE');
EXECUTE sa_components.create_group('MANAGE_SCORE',2111,'PPL','Principle_Programming_Language','CS');
EXECUTE sa_components.create_group('MANAGE_SCORE',2112,'DS','Database_System','CS');
EXECUTE sa_components.create_group('MANAGE_SCORE',2113,'OS','Operating_System','CS');
EXECUTE sa_components.create_group('MANAGE_SCORE',2121,'LDP','Logic_Design_Project','CE');
EXECUTE sa_components.create_group('MANAGE_SCORE',2122,'CA','Computer_Architecture','CE');
EXECUTE sa_components.create_group('MANAGE_SCORE',2123,'EDC','Electronic_Device_Circuit','CE');

EXECUTE sa_components.create_group('MANAGE_SCORE',2210,'EE','Electricity_Engineering','EEE');
EXECUTE sa_components.create_group('MANAGE_SCORE',2220,'CEA','Control_engineering_automation','EEE');
EXECUTE sa_components.create_group('MANAGE_SCORE',2211,'ASP','Analog_Signal_Processing','EE');
EXECUTE sa_components.create_group('MANAGE_SCORE',2212,'UPT','Univ_Physics_Thermal_Phys','EE');
EXECUTE sa_components.create_group('MANAGE_SCORE',2213,'IEF','Intro_to_Electromagnetic_Field','EE');
EXECUTE sa_components.create_group('MANAGE_SCORE',2221,'PE','Power_Electronics','CEA');
EXECUTE sa_components.create_group('MANAGE_SCORE',2222,'EM','Electric_Machinery','CEA');
EXECUTE sa_components.create_group('MANAGE_SCORE',2223,'IQC','Industrial_Quality_Control','CEA');

EXECUTE sa_components.create_group('MANAGE_SCORE',2310,'APM','APPLIED_MATH','AS');
EXECUTE sa_components.create_group('MANAGE_SCORE',2320,'PTH','POLITICAL_THEORY','AS');
EXECUTE sa_components.create_group('MANAGE_SCORE',2311,'GCH','GENERAL_CHEMISTRY','APM');
EXECUTE sa_components.create_group('MANAGE_SCORE',2312,'CL1','CALCULUS_1','APM');
EXECUTE sa_components.create_group('MANAGE_SCORE',2313,'CL2','CALCULUS_2','APM');
EXECUTE sa_components.create_group('MANAGE_SCORE',2321,'ILS','INTRODUCTION_LAW_SYSTEM','PTH');
EXECUTE sa_components.create_group('MANAGE_SCORE',2322,'ENM','ECONOMICS','PTH');
EXECUTE sa_components.create_group('MANAGE_SCORE',2323,'PML','PRINCIPLES_OF_MARXISM_LENINISM','PTH');

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



