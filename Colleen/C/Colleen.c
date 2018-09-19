#include <stdio.h>

/*
	Je suis un commentaire ...
*/

void jesuisappele(char *chaine)
{
	printf(chaine, 10, 10, 10, 9, 10, 10, 10, 10, 10, 9, 10, 10, 10, 10, 10, 9, 34, chaine, 34, 10, 10, 9, 10, 9, 10, 9, 9, 10, 9, 10, 10);
}

int main(void)
{
	char *chaine = "#include <stdio.h>%c%c/*%c%cJe suis un commentaire ...%c*/%c%cvoid jesuisappele(char *chaine)%c{%c%cprintf(chaine, 10, 10, 10, 9, 10, 10, 10, 10, 10, 9, 10, 10, 10, 10, 10, 9, 34, chaine, 34, 10, 10, 9, 10, 9, 10, 9, 9, 10, 9, 10, 10);%c}%c%cint main(void)%c{%c%cchar *chaine = %c%s%c;%c%c%cjesuisappele(chaine);%c%c/*%c%c%cJe suis cache dans la fonction main%c%c*/%c}%c";

	jesuisappele(chaine);
	/*
		Je suis cache dans la fonction main
	*/
}
