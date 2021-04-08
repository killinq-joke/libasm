section .data
	msg	db	'Hello World!', 10, 0

section .text
global _start

_start:
	mov		edx, 13
	mov		ecx, msg
	mov		ebx, 1
	mov		eax, 4
	int		80h
