#include <stdio.h>
#include <stdlib.h>

/*
	Sully is a program that is written and executed 5 times by name Sully_X.
*/
int		main()
{
	int		i = 5;
	char	*itself = "#include <stdio.h>%c#include <stdlib.h>%c%c/*%c%cSully is a program that is written and executed 5 times by name Sully_X.%c*/%cint%c%cmain()%c{%c%cint%c%ci = %d;%c%cchar%c*itself = %c%s%c;%c%cchar%c*name, *cmd;%c%cFILE%c*kid;%c%c%casprintf(&name,%cSully_%%d.c%c,i-1);%c%casprintf(&cmd,%cclang -Wall -Wextra -Werror Sully_%%d.c -o Sully_%%d; ./Sully_%%d;%c,i-1,i-1,i-1);%c%ckid = fopen(name,%cw%c);%c%cfprintf(kid,itself,10,10,10,10,9,10,10,9,9,10,10,9,9,9,i-1,10,9,9,34,itself,34,10,9,9,10,9,9,10,10,9,34,34,10,9,34,34,10,9,34,34,10,9,10,9,10,9,10,9,10,9,10,9,10,9,10,10);%c%cfclose(kid);%c%csystem(cmd);%c%cfree(name);%c%cfree(cmd);%c%ccmd = name = NULL;%c%creturn (0);%c}%c";
	char	*name, *cmd;
	FILE	*kid;

	asprintf(&name,"Sully_%d.c",i-1);
	asprintf(&cmd,"clang -Wall -Wextra -Werror Sully_%d.c -o Sully_%d; ./Sully_%d;",i-1,i-1,i-1);
	kid = fopen(name,"w");
	fprintf(kid,itself,10,10,10,10,9,10,10,9,9,10,10,9,9,9,i-1,10,9,9,34,itself,34,10,9,9,10,9,9,10,10,9,34,34,10,9,34,34,10,9,34,34,10,9,10,9,10,9,10,9,10,9,10,9,10,9,10,10);
	fclose(kid);
	system(cmd);
	free(name);
	free(cmd);
	cmd = name = NULL;
	return (0);
}
