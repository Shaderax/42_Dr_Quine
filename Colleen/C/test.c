#include <stdio.h>

/*
 * 		Ceci est un commentaire.
 * 			*/

void foo(char *c){ printf(c,10,10,9,10,9,9,10,9,10,10,10,10,10,9,10,9,9,10,9,10,9,34,c,34,10,9,10,10,9,10); }

int main(){
	/*
	 * 		Car c'est important, les commentaires
	 * 			*/
	char *c="#include <stdio.h>%c%c%c/*%c%c%cCeci est un commentaire.%c%c*/%c%cvoid foo(char *c){ printf(c,10,10,9,10,9,9,10,9,10,10,10,10,10,9,10,9,9,10,9,10,9,34,c,34,10,9,10,10,9,10); }%c%cint main(){%c%c/*%c%c%cCar c'est important, les commentaires%c%c*/%c%cchar *c=%c%s%c;%c%cfoo(c);%c%c%creturn (0);%c}";
	foo(c);

	return (0);
}
