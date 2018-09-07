; Commentary
extern _printf
global _main

section .data
code db '; Commentary%1$cextern _printf%1$cglobal _main%1$c%1$csection .data%1$ccode db %2$c%3$s%2$c%1$c%1$csection .text%1$c_main:%1$cpush rbp%1$cmov rbp, rsp%1$csub rsp, 16%1$clea rdi, [rel code]%1$cmov rsi, 0xa%1$cmov rdx, 0x27%1$clea rcx, [rel code]%1$ccall _printf%1$cleave%1$cret%1$c; Commentary%1$c'

section .text
_main:
push rbp
mov rbp, rsp
sub rsp, 16
lea rdi, [rel code]
mov rsi, 0xa
mov rdx, 0x27
lea rcx, [rel code]
call _printf
leave
ret
; Commentary
