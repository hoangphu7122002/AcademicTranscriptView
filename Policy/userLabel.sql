--------------------------------
--CONN atv_sec/atvsec;
BEGIN
    sa_user_admin.set_levels
    (policy_name => 'MANAGE_SCORE',
    user_name => 'TCH10',
    max_level => 'V',
    min_level => 'NA',
    def_level => 'V',
    row_level => 'V');
END;
/
BEGIN
    sa_user_admin.set_compartments
    (policy_name => 'MANAGE_SCORE',
    user_name => 'TCH10',
    read_comps => 'HK223',
    write_comps => '',
    def_comps => 'HK223',
    row_comps => 'HK223');
END;
/
BEGIN
    sa_user_admin.set_groups
    (policy_name => 'MANAGE_SCORE',
    user_name => 'TCH10',
    read_groups => 'CLS10',
    write_groups => 'CLS10',
    def_groups => 'CLS10',
    row_groups => 'CLS10');
END;
/
--------------------------------

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
    def_comps => 'HK223',
    row_comps => '');
END;
/
BEGIN
    sa_user_admin.set_groups
    (policy_name => 'MANAGE_SCORE',
    user_name => 'HD5',
    read_groups => 'CS',
    write_groups => '',
    def_groups => 'CS',
    row_groups => '');
END;
/
--------------------------------
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
    sa_user_admin.set_compartments
    (policy_name => 'MANAGE_SCORE',
    user_name => 'DN3',
    read_comps => 'HK201,HK202,HK203,HK211,HK212,HK213,HK221,HK222,HK223',
    write_comps => '',
    def_comps => 'HK222',
    row_comps => '');
END;
/
BEGIN
    sa_user_admin.set_groups
    (policy_name => 'MANAGE_SCORE',
    user_name => 'DN3',
    read_groups => 'CSE',
    write_groups => '',
    def_groups => 'CSE',
    row_groups => '');
END;
/
--------------------------------

BEGIN
    sa_user_admin.set_levels
    (policy_name => 'MANAGE_SCORE',
    user_name => 'DN1',
    max_level => 'V',
    min_level => 'NA',
    def_level => 'V',
    row_level => 'V');
END;
/
BEGIN
    sa_user_admin.set_compartments
    (policy_name => 'MANAGE_SCORE',
    user_name => 'DN1',
    read_comps => 'HK201,HK202,HK203,HK211,HK212,HK213,HK221,HK222,HK223',
    write_comps => '',
    def_comps => 'HK223',
    row_comps => '');
END;
/
BEGIN
    sa_user_admin.set_groups
    (policy_name => 'MANAGE_SCORE',
    user_name => 'DN1',
    read_groups => 'AS',
    write_groups => '',
    def_groups => 'AS',
    row_groups => '');
END;
/
--------------------------------

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
--------------------------------

BEGIN
    sa_user_admin.set_levels
    (policy_name => 'MANAGE_SCORE',
    user_name => 'TCH11',
    max_level => 'E',
    min_level => 'V',
    def_level => 'V',
    row_level => 'V');
END;
/
BEGIN
    sa_user_admin.set_compartments
    (policy_name => 'MANAGE_SCORE',
    user_name => 'TCH11',
    read_comps => 'HK201,HK202,HK203,HK211,HK212,HK213,HK221,HK222,HK223',
    write_comps => 'HK223',
    def_comps => 'HK223',
    row_comps => 'HK223');
END;
/
BEGIN
    sa_user_admin.set_groups
    (policy_name => 'MANAGE_SCORE', 
    user_name => 'TCH11',
    read_groups => 'IEF,PE,CL2,ENM,PML,PPL',
    write_groups => 'IEF,PE,CL2,PPL',
    def_groups => 'IEF,PE,CL2,PPL',
    row_groups => 'IEF,PE,CL2,PPL');
END;
/
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