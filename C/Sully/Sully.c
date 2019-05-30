#include <stdio.h>
#include <fcntl.h>

int		main()
{
	int		i = 5;
	char	*s = "#include <stdio.h>%c#include <fcntl.h>%c%cint%c%cmain()%c{%c%cint%c%ci = %d;%c%cchar%c*s = %c%s%c;%c%cint%c%cfd = open(%cSully_%d.c%c,O_WRONLY|O_CREAT,0x755);%c%c%cdprintf();%c%creturn (0);%c}%c";
	int		fd = open(,O_WRONLY|O_CREAT,0x755);

	dprintf(fd,s,10,10,10,9,9,10,10,9,9,9,i-1,10,9,9,34,s,34,10,9,9,9,34,i-1,34,10,10,9,10,9,10,10);
	return (0);
}