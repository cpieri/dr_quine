#include <stdio.h>
#include <fcntl.h>
#define	CHILD	"Grace_kid.c"
#define	STR	"#include <stdio.h>%c#include <fcntl.h>%c#define%cCHILD%c%c%s%c%c#define%cSTR%c%c%s%c%c#define%cFT%cint main() { int fd = open(%c%s%c,O_WRONLY|O_CREAT,0x755); dprintf(fd,STR,10,10,9,9,34,CHILD,34,10,9,9,34,STR,34,10,9,9,34,CHILD,34,10,10,10,9,10,10,10); return (0); }%c%c/*%c%cGrace creates a new Grace_kid.c file when replicating it.%c*/%cFT%c"
#define	FT	int main() { int fd = open("Grace_kid.c",O_WRONLY|O_CREAT,0x755); dprintf(fd,STR,10,10,9,9,34,CHILD,34,10,9,9,34,STR,34,10,9,9,34,CHILD,34,10,10,10,9,10,10,10); return (0); }

/*
	Grace creates a new Grace_kid.c file when replicating it.
*/
FT
