#include <stdio.h>

/*
Je suis un commentaire ...
*/

void	jesuisappele(void)
{
	char *chaine = "#include <stdio.h>\n\n/*\nJe suis un commentaire ...\n*/\nvoid\tjesuisappele(void)\n{\n\t\n}\n\nint main(void)\n{\n\tjesuisappele();\n\t/*\n\tJe suis cache dans la fonction main\n\t*/\n}\");";

	printf("%s", chaine);
}

int main(void)
{
	jesuisappele();
	/*
	Je suis cache dans la fonction main
	*/
}
