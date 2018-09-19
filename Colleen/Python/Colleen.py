#Comment 1
def useless():
	#Comment 2
	return
a = "#Comment 1%cdef useless():%c%c#Comment 2%c%creturn%ca = %c%s%c%cprint a %c (10,10,9,10,9,10,34,a,34,10,37)"
print a % (10,10,9,10,9,10,34,a,34,10,37)
