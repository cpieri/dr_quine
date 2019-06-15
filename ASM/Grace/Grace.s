; Grace creates a new Grace_kid.s file when replicating it.

%define SYSCALL(nb) 0x2000000 | nb
%define TAB 9
%define NL 10

%macro main 0
global _main
_main:
	push rbp
	mov rbp, rsp
	lea rdi, [rel kid.file]
	mov rsi, 1537
	mov rdx, 420
	mov rax, SYSCALL(5)
	syscall
	mov rdi, rax
	lea rsi, [rel kid.string]
	lea rdx, [NL]
	lea rcx, [TAB]
	lea r8, [34]
	lea r9, [rel kid.string]
	call _dprintf
	mov rax, SYSCALL(6)
	syscall
	leave
	ret
%endmacro

section .data
kid:
	.string db "; Grace creates a new Grace_kid.s file when replicating it.%1$c%1$c%%define SYSCALL(nb) 0x2000000 | nb%1$c%%define TAB 9%1$c%%define NL 10%1$c%1$c%%macro main 0%1$cglobal _main%1$c_main:%1$c%2$cpush rbp%1$c%2$cmov rbp, rsp%1$c%2$clea rdi, [rel kid.file]%1$c%2$cmov rsi, 1537%1$c%2$cmov rdx, 420%1$c%2$cmov rax, SYSCALL(5)%1$c%2$csyscall%1$c%2$cmov rdi, rax%1$c%2$clea rsi, [rel kid.string]%1$c%2$clea rdx, [NL]%1$c%2$clea rcx, [TAB]%1$c%2$clea r8, [34]%1$c%2$clea r9, [rel kid.string]%1$c%2$ccall _dprintf%1$c%2$cmov rax, SYSCALL(6)%1$c%2$csyscall%1$c%2$cleave%1$c%2$cret%1$c%%endmacro%1$c%1$csection .data%1$ckid:%1$c%2$c.string db %3$c%4$s%3$c, 0%1$c%2$c.file db %3$cGrace_kid.s%3$c, 0%1$c%1$csection .text%1$c%2$cglobal start%1$c%2$cextern _dprintf%1$c%1$cstart:%1$c%2$cmain%1$c%2$cret%1$c", 0
	.file db "Grace_kid.s", 0

section .text
	global start
	extern _dprintf

start:
	main
	ret
