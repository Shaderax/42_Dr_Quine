#!/usr/bin/python
import os
import sys

i = 5
if i > 0:
    if sys.argv[0] != './Sully.py':
        i -= 1
    progName = "Sully_" + str(i) + ".py"
    fd = open(progName,"w+")
    a = "#!/usr/bin/python%cimport os%cimport sys%c%ci = %d%cif i > 0:%c    if sys.argv[0] != './Sully.py':%c        i -= 1%c    progName = %cSully_%c + str(i) + %c.py%c%c    fd = open(progName,%cw+%c)%c    a = %c%s%c%c    fd.write(a %% (10,10,10,10,i,10,10,10,10,34,34,34,34,10,34,34,10,34,a,34,10,10,10,10))%c    fd.close()%c    os.system('chmod 777 ' + progName)%c    os.system('./' + progName)"
    fd.write(a % (10,10,10,10,i,10,10,10,10,34,34,34,34,10,34,34,10,34,a,34,10,10,10,10))
    fd.close()
    os.system('chmod 777 ' + progName)
    os.system('./' + progName)
