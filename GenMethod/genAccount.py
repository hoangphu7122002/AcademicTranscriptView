stu = 60
tch = 18
head_dept = 6
dean = 3
pr = 40

with open('addAccount.sql','a') as f:
    for ele in range(1,stu+1):
        # f.write("create user std{} identified by p123;\n".format(ele))
        f.write("GRANT student TO std{} IDENTIFIED BY {};\n".format(ele, 'p123'))
    f.write('\n')
    for ele in range(10,tch+10):
        # f.write("create user tc{} identified by p123;\n".format(ele))
        f.write("GRANT teacher TO tch{} IDENTIFIED BY {};\n".format(ele, 'p123'))
        if ele in [10,12,14,16,18,20,22,24,26,27]:
            f.write("GRANT form_teacher TO tch{};\n".format(ele))
    f.write('\n')        
    for ele in range(1,head_dept+1):
        f.write("GRANT head_dept TO hd{} IDENTIFIED BY {};\n".format(ele, 'p123'))
    f.write('\n')        
    for ele in range(1,dean+1):
        f.write("GRANT dean TO dn{} IDENTIFIED BY {};\n".format(ele, 'p123'))
    f.write('\n')        
    for ele in range(1,pr+1):
        f.write("GRANT parent TO pr{} IDENTIFIED BY {};\n".format(ele, 'p123'))
