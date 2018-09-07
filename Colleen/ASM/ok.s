;Comment
;BITS 32
extern _printf
global _main
section .data
buffer: db ';Comment%2$cBITS 32%2$cextern printf%2$cglobal main%2$csection .data%2$cbuffer: db %3$c%s%3$c,0x0%2$csection .text%2$cmain:%2$c;Comment%2$cpush ebp%2$cmov ebp, esp%2$cpush 0x27%2$cpush 0xa%2$cpush buffer%2$cpush buffer%2$ccall printf%2$cadd esp, 16%2$cleave%2$cret%2$c',0x0
section .text
_main:
;Comment
push rbp
mov rbp, rsp
mov rcx, 0x27
mov rdx, 0xa
mov rdi, buffer
mov rsi, buffer
call _printf
add rsp, 16
leave
ret
