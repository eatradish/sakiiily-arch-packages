import os

if __name__ == '__main__':
    os.popen("HOST=`cat /etc/hostname`")
    host = os.popen('echo $HOST').read()
    print(host)
    f = open("package-" + host + ".txt", "r").readline()
    lst = []
    for i in f:
        lst.append(i)
    for i in lst:
        os.popen("pacaur -S " + i)

