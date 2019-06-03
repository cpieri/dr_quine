; Sully is a program that is written and executed 5 times by name Sully_X.

%define SYSCALL(nb) 0x2000000 | nb

section .data
ok db "%d %d %d %d %d", 10, 0
kid:
	.string db "; Sully is a program that is written and executed 5 times by name Sully_X.%1$c%1$c%%define SYSCALL(nb) 0x2000000 | nb%1$c%1$csection .data%1$ckid:%1$c%2$c.string db %3$c%4$s%3$c, 0%1$c%2$c.file db %3$cSully_%%d.s%3$c, 0%1$c%2$c.cmd db %3$cnasm -f macho64 Sully_%%1$d.s -o Sully_%%1$d.o; ld Sully_%%1$d.o -macosx_version_min 10.8 -lSystem -o Sully_%%1$d; ./Sully_%%1$d%3$c%1$c%1$csection .text%1$c%2$cglobal start%1$c%2$cglobal _main%1$c%2$cextern _system%1$c%2$cextern _malloc%1$c%2$cextern _free%1$c%2$cextern _sprintf%1$c%2$cextern _dprintf%1$c%1$cstart:%1$c%2$ccall _main%1$c%2$cret%1$c%1$c_main:%1$c%2$cpush rbp%1$c%2$cmov rbp, rsp%1$c%2$cmov r15, %d %1$c%2$cdec r15%1$c%2$cmov rdi, 10%1$c%2$ccall _malloc%1$c%2$cmov r14, rax%1$c%2$cmov rdi, r14%1$c%2$clea rsi, [rel kid.file]%1$c%2$cmov rdx, r15%1$c%2$ccall _sprintf%1$c%2$cmov rdi, r14%1$c%2$cmov rsi, 1537%1$c%2$cmov rdx, 420%1$c%2$cmov rax, SYSCALL(5)%1$c%2$csyscall%1$c%2$cmov r13, rax%1$c%2$cmov rdi, r14%1$c%2$ccall _free%1$c%2$cmov rdi, r13%1$c%2$clea rsi, [rel kid.string]%1$c%2$clea rdx, [10]%1$c%2$clea rcx, [9]%1$c%2$clea r8, [34]%1$c%2$clea r9, [rel kid.string]%1$c%2$cmov r10, r15%1$c%2$ccall _dprintf%1$c%2$cmov rdi, r13%1$c%2$cmov rax, SYSCALL(6)%1$c%2$csyscall%1$c%2$cmov rdi, 109%1$c%2$ccall _malloc%1$c%2$cmov r14, rax%1$c%2$cmov rdi, r14%1$c%2$clea rsi, [rel kid.cmd]%1$c%2$cmov rdx, r15%1$c%2$ccall _sprintf%1$c%2$cmov rdi, r14%1$c%2$ccall _system%1$c%2$cmov rdi, r14%1$c%2$ccall _free%1$c%2$cleave%1$c%2$cret%1$c", 0
	.file db "Sully_%d.s", 0
	.cmd db "nasm -f macho64 Sully_%1$d.s -o Sully_%1$d.o; ld Sully_%1$d.o -macosx_version_min 10.8 -lSystem -o Sully_%1$d; ./Sully_%1$d"

section .text
	global start
	global _main
	extern _system
	extern _malloc
	extern _free
	extern _sprintf
	extern _dprintf

start:
	call _main
	ret

_main:
	push rbp
	mov rbp, rsp
	mov r15, 5
	dec r15
	mov rdi, 10
	call _malloc
	mov r14, rax
	mov rdi, r14
	lea rsi, [rel kid.file]
	mov rdx, r15
	call _sprintf
	mov rdi, r14
	mov rsi, 1537
	mov rdx, 420
	mov rax, SYSCALL(5)
	syscall
	mov r13, rax
	mov rdi, r14
	call _free
	mov rdi, r13
	lea rsi, [rel kid.string]
	lea rdx, [10]
	lea rcx, [9]
	lea r8, [34]
	lea r9, [rel kid.string]
	call _dprintf
	mov rdi, r13
	mov rax, SYSCALL(6)
	syscall
	mov rdi, 109
	call _malloc
	mov r14, rax
	mov rdi, r14
	lea rsi, [rel kid.cmd]
	mov rdx, r15
	call _sprintf
	mov rdi, r14
	call _system
	mov rdi, r14
	call _free
	leave
	ret
