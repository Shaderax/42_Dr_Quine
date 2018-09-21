%define DEF1
%define DEF2
%define DEF3
extern _fopen
extern _fprintf
section .data
code db '%%define DEF1%1$c%%define DEF2%1$c%%define DEF3%1$cextern _fopen%1$cextern _fprintf%1$csection .data%1$ccode db %2$c%3$s%2$c, 0%1$cfilename db %2$cGrace_kid.s%2$c, 0%1$carg db %2$cw%2$c, 0%1$csection .text%1$cglobal _main%1$c%%macro MAINE 1%1$c_main:%1$cpush rbp%1$cmov rbp, rsp%1$clea rdi, [rel filename]%1$clea rsi, [rel arg]%1$ccall _fopen%1$ccmp rax, 0x0%1$cjle _end%1$cmov rdi, rax%1$clea rsi, [rel code]%1$cmov rdx, 0xa%1$cmov rcx, 0x27%1$clea r8, [rel code]%1$ccall _fprintf%1$cleave%1$cret%1$c%%endmacro%1$cMAINE 1 ; Number of parameters%1$c_end:%1$cleave%1$cret%1$c', 0
filename db 'Grace_kid.s', 0
arg db 'w', 0
section .text
global _main
%macro MAINE 1
_main:
push rbp
mov rbp, rsp
lea rdi, [rel filename]
lea rsi, [rel arg]
call _fopen
cmp rax, 0x0
jle _end
mov rdi, rax
lea rsi, [rel code]
mov rdx, 0xa
mov rcx, 0x27
lea r8, [rel code]
call _fprintf
leave
ret
%endmacro
MAINE 1 ; Number of parameters
_end:
leave
ret
