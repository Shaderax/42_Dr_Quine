; Commentary
extern _sprintf
extern _fprintf
extern _fopen
extern _fclose
extern _system

section .data
i dd 5
compile db 'nasm -f macho64 Sully_%1$d.s && gcc Sully_%1$d && ./Sully_%1$d', 0
filename db 'Sully_%1$d.s', 0
code db ' ok ', 0

section .text
global _main
_main:
CMP i, 1
jle end

lea rdi, [rel filename]
call _sprintf

leave
ret

end:
leave
ret
