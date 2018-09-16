#Comment
lib C
	fun printf(format : UInt8*, ...) : Int32
end

def jesuissuisse()
end

def main()
	#Commentaire
	code = "#Comment%1$clib C%1$c%3$cfun printf(format : UInt8*, ...) : Int32%1$cend%1$c%1$cdef jesuissuisse()%1$cend%1$c%1$cdef main()%1$c%3$c#Commentaire%1$c%3$ccode = %2$c%4$s%2$c%1$c%3$cC.printf(code, 10, 34, 9, code)%1$c%3$cjesuissuisse()%1$cend%1$c%1$cmain()"
	C.printf(code, 10, 34, 9, code)
	jesuissuisse()
end

main()
