#include <stdio.h>

/*
	Colleen is my first quine !!
*/

char	*colleen()
{
	char	*s = "#include <stdio.h>%c%c/*%c%cColleen is my first quine !!%c*/%c%cchar%c*colleen()%c{%c%cchar%c*s = %c%s%c;%c%creturn (s);%c}%c%cint%c%cmain()%c{%c%c/*%c%c%cMain of Colleen.%c%c%c%cColleen is a program that replicates on the standard output.%c%c*/%c%cprintf(colleen(),10,10,10,9,10,10,10,9,10,10,9,9,34,colleen(),34,10,9,10,10,10,9,9,10,10,9,10,9,9,10,10,9,9,10,9,10,9,10,9,10,10);%c%creturn (0);%c}%c";
	return (s);
}

int		main()
{
	/*
		Main of Colleen.

		Colleen is a program that replicates on the standard output.
	*/
	printf(colleen(),10,10,10,9,10,10,10,9,10,10,9,9,34,colleen(),34,10,9,10,10,10,9,9,10,10,9,10,9,9,10,10,9,9,10,9,10,9,10,9,10,10);
	return (0);
}
