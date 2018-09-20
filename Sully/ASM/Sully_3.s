; Commentary
extern _sprintf
extern _fprintf
extern _fopen
extern _fclose
extern _system

section .data
i dd 3
compile db 'nasm -f macho64 Sully_%1$d.s && gcc Sully_%1$d.o -o Sully_%1$d && ./Sully_%1$d', 0
filename db 'Sully_%1$d.s', 0
code db '; Commentary%1$cextern _sprintf%1$cextern _fprintf%1$cextern _fopen%1$cextern _fclose%1$cextern _system%1$c%1$csection .data%1$ci dd %4$d%1$ccompile db %2$cnasm -f macho64 Sully_%%1$d.s && gcc Sully_%%1$d.o -o Sully_%%1$d && ./Sully_%%1$d%2$c, 0%1$cfilename db %2$cSully_%%1$d.s%2$c, 0%1$ccode db %2$c%3$s%2$c, 0%1$carg db %2$cw%2$c, 0%1$c%1$csection .text%1$cglobal _main%1$c_main:%1$cpush rbp%1$cmov rbp, rsp%1$c%1$ccmp DWORD [rel i], 0x0%1$cjle _end%1$c%1$cmov rax, [rel i]%1$csub rax, 1%1$c%1$c; sprintf%1$csub rsp, 512%1$clea rdi, [rbp - 512] ;rsp%1$clea rsi, [rel filename]%1$cmov rdx, rax%1$ccall _sprintf%1$c%1$c; fopen%1$clea rdi, [rel rsp]%1$clea rsi, [rel arg]%1$ccall _fopen%1$c%1$ccmp rax, 0x0%1$cjle _end%1$c%1$cmov r12, rax%1$c%1$cmov rax, [rel i]%1$csub rax, 1%1$c%1$c; fprintf write code%1$cmov rdi, r12%1$clea rsi, [rel code]%1$cmov rdx, 0xa%1$cmov rcx, 0x27%1$clea r8, [rel code]%1$cmov r9, rax%1$ccall _fprintf%1$c%1$cmov rax, [rel i]%1$csub rax, 1%1$c%1$c; sprintf compile%1$csub rsp, 512%1$clea rdi, [rel rsp]%1$clea rsi, [rel compile]%1$cmov rdx, rax%1$ccall _sprintf%1$c%1$c; fclose%1$cmov rdi, r12%1$ccall _fclose%1$c%1$c; system%1$clea rdi, [rel rsp]%1$ccall _system%1$c%1$cleave%1$cret%1$c%1$c_end:%1$cleave%1$cret%1$c', 0
arg db 'w', 0

section .text
global _main
_main:
push rbp
mov rbp, rsp

cmp DWORD [rel i], 0x0
jle _end

mov rax, [rel i]
sub rax, 1

; sprintf
sub rsp, 512
lea rdi, [rbp - 512] ;rsp
lea rsi, [rel filename]
mov rdx, rax
call _sprintf

; fopen
lea rdi, [rel rsp]
lea rsi, [rel arg]
call _fopen

cmp rax, 0x0
jle _end

mov r12, rax

mov rax, [rel i]
sub rax, 1

; fprintf write code
mov rdi, r12
lea rsi, [rel code]
mov rdx, 0xa
mov rcx, 0x27
lea r8, [rel code]
mov r9, rax
call _fprintf

mov rax, [rel i]
sub rax, 1

; sprintf compile
sub rsp, 512
lea rdi, [rel rsp]
lea rsi, [rel compile]
mov rdx, rax
call _sprintf

; fclose
mov rdi, r12
call _fclose

; system
lea rdi, [rel rsp]
call _system

leave
ret

_end:
leave
ret
