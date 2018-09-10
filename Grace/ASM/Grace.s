%define DEF1
%define DEF2
%define DEF3
extern fopen
extern fprintf

section .data
code db ' %s%c%c '
filename db 'Grace_kid.s'
arg db 'wab+'

section .text
%macro MAINE 1
main:
push rbp
mov rbp, rsp
sub rsp, 16
lea rdi, [rel filename]
lea rsi, [rel arg]
call fopen

mov rdi, rax
lea rsi, [rel code]
mov rdx, 0xa
mov rcx, 0x27
call fprintf
leave
ret
%endmacro
MAINE 1 ; Number of parameters
