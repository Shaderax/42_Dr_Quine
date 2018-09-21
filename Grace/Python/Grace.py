# Prout !
try:
    fd = open("Grace_kid.py", "w+")
except IOError:
    print ('cannot open Grace_kid.c')
    exit()
a = "# Prout !%ctry:%c    fd = open(%cGrace_kid.py%c, %cw+%c)%cexcept IOError:%c    print ('cannot open Grace_kid.c')%c    exit()%ca = %c%s%c%cmacro = lambda fd : fd.write(a %c (10,10,34,34,34,34,10,10,10,10,34,a,34,10,37,10,10))%cmacro(fd)%c"
macro = lambda fd : fd.write(a % (10,10,34,34,34,34,10,10,10,10,34,a,34,10,37,10,10))
macro(fd)
