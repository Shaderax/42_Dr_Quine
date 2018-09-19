# Prout !
fd = open("Grace_kid.py", "w+")
a = "# Prout !%cfd = open(%cGrace_kid.py%c, %cw+%c)%ca = %c%s%c%cmacro = lambda fd : fd.write(a %c (10,34,34,34,34,10,34,a,34,10,37,10,10))%cmacro(fd)%c"
macro = lambda fd : fd.write(a % (10,34,34,34,34,10,34,a,34,10,37,10,10))
macro(fd)
