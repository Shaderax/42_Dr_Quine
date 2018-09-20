#Comment 1
def useless():
        return
def main():
        #Comment 2
        a = "#Comment 1%cdef useless():%c        return%cdef main():%c        #Comment 2%c        a = %c%s%c%c        print a %c (10, 10, 10, 10, 10, 34, a, 34, 10, 37, 10, 10, 10)%c        return%c%cmain()"
        print a % (10, 10, 10, 10, 10, 34, a, 34, 10, 37, 10, 10, 10)
        return

main()
