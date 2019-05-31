; This program it's write in nasm !!
section .data
	msg: db "; This program it's write in nasm !!%1$csection .data%1$c%2$cmsg: db %3$c%4$s%3$c, 0%1$c%1$csection .text%1$c%2$cglobal start%1$c%2$cglobal _main%1$c%2$cextern _printf%1$c%1$cstart:%1$c%2$ccall _main%1$c%2$cret%1$c%1$c_main:%1$c%2$c; Colleen Main in nasm !%1$c%2$cpush rbp%1$c%2$cmov rbp, rsp%1$c%2$csub rsp, 16%1$c%2$clea rdi, [rel msg]%1$c%2$clea rsi, [10]%1$c%2$clea rdx, [9]%1$c%2$clea rcx, [34]%1$c%2$clea r8, [rel msg]%1$c%2$ccall _printf%1$c%2$cleave%1$c%2$cret%1$c", 0

section .text
	global start
	global _main
	extern _printf

start:
	call _main
	ret

_main:
	; Colleen Main in nasm !
	push rbp
	mov rbp, rsp
	sub rsp, 16
	lea rdi, [rel msg]
	lea rsi, [10]
	lea rdx, [9]
	lea rcx, [34]
	lea r8, [rel msg]
	call _printf
	leave
	ret
