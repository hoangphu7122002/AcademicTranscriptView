std = 60
tc = 20
pr = 40

with open('addAcocount.sql','a') as f:
    for ele in range(1,std+1):
        f.write("create user std{} identified by p123;\n".format(ele))
        f.write("grant create session to std{};\n".format(ele))
    f.write('\n')
    for ele in range(1,tc+1):
        f.write("create user tc{} identified by p123;\n".format(ele))
        f.write("grant create session to tc{};\n".format(ele))
    f.write('\n')        
    for ele in range(1,pr+1):
        f.write("create user pr{} identified by p123;\n".format(ele))
        f.write("grant create session to pr{};\n".format(ele))