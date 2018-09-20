#include <stdlib.h>
#include <stdio.h>

int main()
{
int i = 5;
char filename[512];
char compile[512];
char *code = "#include <stdlib.h>%1$c#include <stdio.h>%1$c%1$cint main()%1$c{%1$cint i = %4$d;%1$cchar filename[512];%1$cchar compile[512];%1$cchar *code = %2$c%3$s%2$c;%1$cif (i < 1){return (0);}%1$csprintf(filename, %2$cSully_%%d.c%2$c, i - 1);%1$cFILE *f = fopen(filename, %2$cw%2$c);%1$cif (!f) {exit(1);}%1$cfprintf(f, code, 10, 34, code, i - 1);%1$csprintf(compile, %2$cgcc Sully_%%d.c -o Sully_%%d && ./Sully_%%d%2$c, i - 1, i - 1, i - 1);%1$cfclose(f);%1$csystem(compile);%1$creturn (0);%1$c}%1$c";
if (i < 1){return (0);}
sprintf(filename, "Sully_%d.c", i - 1);
FILE *f = fopen(filename, "w");
if (!f) {exit(1);}
fprintf(f, code, 10, 34, code, i - 1);
sprintf(compile, "gcc Sully_%d.c -o Sully_%d && ./Sully_%d", i - 1, i - 1, i - 1);
fclose(f);
system(compile);
return (0);
}
