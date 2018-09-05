#include <stdio.h>

#define CODE "#include <stdio.h>%c%c#define CODE %c%s%c%c#define GRACE() {FILE *f = fopen(%cGrace_kid.c%c, %cwab+%c); fprintf(f, CODE);}%c#define MAIN() int main() {GRACE();}%c%cMAIN()%c%c/* This is my comment */%c"
#define GRACE() {FILE *f = fopen("Grace_kid.c", "wab+"); fprintf(f, CODE);}
#define MAIN() int main() {GRACE();}

MAIN()

/* This is my comment */
