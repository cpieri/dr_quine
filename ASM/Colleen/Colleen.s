; This program it's write in nasm !!
section .data
	msg: "hello world", 10
	len: equ $ - msg

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
	call _printf
	leave
	ret
