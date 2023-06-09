-- CONN atv_sec/atvsec;


----------- THIS OLS USER LABEL IS FOR POLICY 1, 2 IN ASSIGNMENT ------------------
BEGIN
    sa_user_admin.set_levels
    (policy_name => 'MANAGE_SCORE',
    user_name => 'STD1',
    max_level => 'V',
    min_level => 'V',
    def_level => 'V',
    row_level => 'V');
END;
/
BEGIN
    sa_user_admin.set_compartments
    (policy_name => 'MANAGE_SCORE',
    user_name => 'STD1',
    read_comps => 'HK201,HK202,HK203,HK211,HK212,HK213,HK221,HK222,HK223',
    write_comps => '',
    def_comps => 'HK201,HK202,HK203,HK211,HK212,HK213,HK221,HK222,HK223',
    row_comps => 'HK201,HK202,HK203,HK211,HK212,HK213,HK221,HK222,HK223');
END;
/
BEGIN
    sa_user_admin.set_groups
    (policy_name => 'MANAGE_SCORE',
    user_name => 'STD1',
    read_groups => 'BK',
    write_groups => '',
    def_groups => 'BK',
    row_groups => 'BK');
END;
/
-------------------
BEGIN
    sa_user_admin.set_levels
    (policy_name => 'MANAGE_SCORE',
    user_name => 'PR2',
    max_level => 'V',
    min_level => 'V',
    def_level => 'V',
    row_level => 'V');
END;
/
BEGIN
    sa_user_admin.set_compartments
    (policy_name => 'MANAGE_SCORE',
    user_name => 'PR2',
    read_comps => 'HK201,HK202,HK203,HK211,HK212,HK213,HK221,HK222,HK223',
    write_comps => '',
    def_comps => 'HK201,HK202,HK203,HK211,HK212,HK213,HK221,HK222,HK223',
    row_comps => 'HK201,HK202,HK203,HK211,HK212,HK213,HK221,HK222,HK223');
END;
/
BEGIN
    sa_user_admin.set_groups
    (policy_name => 'MANAGE_SCORE',
    user_name => 'PR2',
    read_groups => 'BK',
    write_groups => '',
    def_groups => 'BK',
    row_groups => 'BK');
END;
/
----------- ABOVE OLS USER LABEL IS FOR POLICY 1, 2 IN ASSIGNMENT ------------------
----------------
----------- THIS OLS USER LABE IS FOR POLICY 3 IN ASSIGNMENT ------------------
BEGIN
    sa_user_admin.set_levels
    (policy_name => 'MANAGE_SCORE',
    user_name => 'TCH15',
    max_level => 'E',
    min_level => 'V',
    def_level => 'V',
    row_level => 'V');
END;
/
BEGIN
    sa_user_admin.set_compartments
    (policy_name => 'MANAGE_SCORE',
    user_name => 'TCH15',
    read_comps => 'HK201,HK202,HK203,HK211,HK212,HK213,HK221,HK222,HK223',
    write_comps => 'HK223',
    def_comps => 'HK201,HK202,HK203,HK211,HK212,HK213,HK221,HK222,HK223');
END;
/
BEGIN
    sa_user_admin.set_groups
    (policy_name => 'MANAGE_SCORE', 
    user_name => 'TCH15',
    read_groups => 'UPT,PE,CL1,EDC',
    write_groups => 'PE',
    def_groups => 'UPT,PE,CL1,EDC');
END;
/
----------- ABOVE OLS USER LABE IS FOR POLICY 3 IN ASSIGNMENT ------------------
------------------------
----------- THIS OLS USER LABE IS FOR POLICY 4 IN ASSIGNMENT ------------------
BEGIN
    sa_user_admin.set_levels
    (policy_name => 'MANAGE_SCORE',
    user_name => 'TCH12',
    max_level => 'V',
    min_level => 'NA',
    def_level => 'V',
    row_level => 'V');
END;
/
BEGIN
    sa_user_admin.set_compartments
    (policy_name => 'MANAGE_SCORE',
    user_name => 'TCH12',
    read_comps => 'HK223',
    write_comps => '',
    def_comps => 'HK223',
    row_comps => 'HK223');
END;
/
BEGIN
    sa_user_admin.set_groups
    (policy_name => 'MANAGE_SCORE',
    user_name => 'TCH12',
    read_groups => 'CLS02',
    write_groups => 'CLS02',
    def_groups => 'CLS02',
    row_groups => 'CLS02');
END;
/
----------- ABOVE OLS USER LABE IS FOR POLICY 4 IN ASSIGNMENT ------------------
--------------------------------
----------- THIS OLS USER LABE IS FOR POLICY 5 IN ASSIGNMENT ------------------
BEGIN
    sa_user_admin.set_levels
    (policy_name => 'MANAGE_SCORE',
    user_name => 'HD5',
    max_level => 'V',
    min_level => 'NA',
    def_level => 'V',
    row_level => 'V');
END;
/
BEGIN
    sa_user_admin.set_compartments
    (policy_name => 'MANAGE_SCORE',
    user_name => 'HD5',
    read_comps => 'HK201,HK202,HK203,HK211,HK212,HK213,HK221,HK222,HK223',
    write_comps => '',
    def_comps => 'HK201,HK202,HK203,HK211,HK212,HK213,HK221,HK222,HK223',
    row_comps => 'HK201,HK202,HK203,HK211,HK212,HK213,HK221,HK222,HK223');
END;
/
BEGIN
    sa_user_admin.set_groups
    (policy_name => 'MANAGE_SCORE',
    user_name => 'HD5',
    read_groups => 'CS',
    write_groups => '',
    def_groups => 'CS',
    row_groups => 'CS');
END;
/
----------- ABOVE OLS USER LABE IS FOR POLICY 5 IN ASSIGNMENT ------------------
--------------------------------
----------- THIS OLS USER LABE IS FOR POLICY 6 IN ASSIGNMENT ------------------
BEGIN
    sa_user_admin.set_levels
    (policy_name => 'MANAGE_SCORE',
    user_name => 'DN3',
    max_level => 'V',
    min_level => 'NA',
    def_level => 'V',
    row_level => 'V');
END;
/
BEGIN
--    sa_user_admin.drop_all_compartments
--        (policy_name => 'MANAGE_SCORE',
--        user_name => 'DN3');
--end;
    sa_user_admin.set_compartments
        (policy_name => 'MANAGE_SCORE',
        user_name => 'DN3',
        read_comps => 'HK201,HK202,HK203,HK211,HK212,HK213,HK221,HK222,HK223',
        write_comps => '',
        def_comps => 'HK201,HK202,HK203,HK211,HK212,HK213,HK221,HK222,HK223',
        row_comps => 'HK201,HK202,HK203,HK211,HK212,HK213,HK221,HK222,HK223');
END;
/
BEGIN
--    sa_user_admin.drop_all_groups
--        (policy_name => 'MANAGE_SCORE',
--        user_name => 'DN3');
--end;
    sa_user_admin.set_groups
        (policy_name => 'MANAGE_SCORE',
        user_name => 'DN3',
        read_groups => 'CSE',
        write_groups => '',
        def_groups => 'CSE',
        row_groups => 'CSE');
END;
/
----------- ABOVE OLS USER LABE IS FOR POLICY 6 IN ASSIGNMENT ------------------
--------------------------------
----------- THIS OLS USER LABE IS FOR POLICY 7 IN ASSIGNMENT ------------------
BEGIN
    sa_user_admin.set_levels
    (policy_name => 'MANAGE_SCORE',
    user_name => 'EMP_PDT',
    max_level => 'E',
    min_level => 'V',
    def_level => 'V',
    row_level => 'V');
END;
/
BEGIN
    sa_user_admin.set_compartments
    (policy_name => 'MANAGE_SCORE',
    user_name => 'EMP_PDT',
    read_comps => 'HK201,HK202,HK203,HK211,HK212,HK213,HK221,HK222,HK223',
    write_comps => 'HK222,HK223',
    def_comps => 'HK222,HK223',
    row_comps => 'HK222,HK223');
END;
/
BEGIN
    sa_user_admin.set_groups
    (policy_name => 'MANAGE_SCORE',
    user_name => 'EMP_PDT',
    read_groups => 'PDT',
    write_groups => 'PDT',
    def_groups => 'PDT',
    row_groups => 'PDT');
END;
/
----------- ABOVE OLS USER LABE IS FOR POLICY 7 IN ASSIGNMENT ------------------
-------------------------------

---------------------------- END ----------------------

-- FOR TESTING

--------------------------------
-- CREATE OR REPLACE PROCEDURE upgrade_user_level(p_username IN VARCHAR(512))
-- IS
--   l_max_level VARCHAR2(512);
-- BEGIN
--   -- Get the maximum level defined in the policy
--   SELECT MAX(level_name) INTO l_max_level FROM dba_ols_levels;
  
--   -- Upgrade the user's security level to the maximum level
--   sa_user_admin.set_levels(p_username, l_max_level);
-- END;

-- upgrade_user_level('TCH10')
-- upgrade_user_level('HD5')
-- upgrade_user_level('DN3')
-- upgrade_user_level('EMP_PDT')
-- upgrade_user_level('TCH11')