#include <stdio.h>
#include <stdlib.h>

/*
	Sully is a program that is written and executed 5 times by name Sully_X.
*/
int		main()
{
	int		i = 5;
	char	*itself = "#include <stdio.h>%1$c#include <stdlib.h>%1$c%1$c/*%1$c%2$cSully is a program that is written and executed 5 times by name Sully_X.%1$c*/%1$cint%2$cmain()%1$c{%2$cint%2$c%2$ci = %3$d;%1$c%2$cchar%2$c*itself = %4$c%5$s%4$c;%1$c%2$cchar%2$c*name, *compile, *cmd;%1$c%2$cFILE%2$c*kid;%1$c%2$cif (i == 0)%1$c%2$c%2$creturn (0);%1$c%2$ci += (fopen(%4$cSully_5.c%4$c, %4$cr%4$c) == NULL) ? 0 : -1;%1$c%2$casprintf(&name,%4$cSully_%%d.c%4$c,i);%1$c%2$casprintf(&compile,%4$cclang -Wall -Wextra -Werror Sully_%%d.c -o Sully_%%d;%4$c,i,i);%1$c%2$casprintf(&cmd,%4$c./Sully_%%d;%4$c,i);%1$c%2$ckid = fopen(name,%4$cw%4$c);%1$c%2$cfprintf(kid,itself,10,9,i,34,itself);%1$c%2$cfclose(kid);%1$c%2$csystem(compile);%1$c%2$csystem(cmd);%1$c%2$cfree(compile), free(name), free(cmd);%1$c%2$ccompile = cmd = name = NULL;%1$c%2$creturn (0);%1$c}%1$c";
	char	*name, *compile, *cmd;
	FILE	*kid;

	if (i == 0)
		return (0);
	i += (fopen("Sully_5.c", "r") == NULL) ? 0 : -1;
	asprintf(&name,"Sully_%d.c",i);
	asprintf(&compile,"clang -Wall -Wextra -Werror Sully_%d.c -o Sully_%d;",i,i);
	asprintf(&cmd,"./Sully_%d;",i);
	kid = fopen(name,"w");
	fprintf(kid,itself,10,9,i,34,itself);
	fclose(kid);
	system(compile);
	system(cmd);
	free(compile), free(name), free(cmd);
	compile = cmd = name = NULL;
	return (0);
}
