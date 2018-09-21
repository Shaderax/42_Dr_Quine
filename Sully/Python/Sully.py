#!/usr/bin/python
import os
import sys

i = 5
if i > -1:
    progName = "Sully_" + str(i) + ".py"
    try:
        fd = open(progName,"w+")
    except IOError:
        print ('cannot open', progName)
        exit()
    a = "#!/usr/bin/python%cimport os%cimport sys%c%ci = %d%cif i > -1:%c    progName = %cSully_%c + str(i) + %c.py%c%c    try:%c        fd = open(progName,%cw+%c)%c    except IOError:%c        print ('cannot open', progName)%c        exit()%c    a = %c%s%c%c    fd.write(a %% (10, 10, 10, 10, i - 1, 10, 10, 34, 34, 34, 34, 10, 10, 34, 34, 10, 10, 10, 10, 34, a, 34, 10, 10, 10, 10, 10))%c    fd.close()%c    os.system('chmod 777 ' + progName)%c    os.system('./' + progName)%c"
    fd.write(a % (10, 10, 10, 10, i - 1, 10, 10, 34, 34, 34, 34, 10, 10, 34, 34, 10, 10, 10, 10, 34, a, 34, 10, 10, 10, 10, 10))
    fd.close()
    os.system('chmod 777 ' + progName)
    os.system('./' + progName)
