num1 = 45
num2 = 60
with open ('./a.txt', 'a') as f:
    for i in range(0, 180):
        f.write("ASSIGN_DATA_LABEL({},{});\n".format(i%num1 + 1, i%num2 + 1))