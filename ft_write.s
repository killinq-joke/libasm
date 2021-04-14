BITS	64

section	.text

global	_ft_write:
extern	___error

_ft_write:
	mov		rax, 0x2000004
	syscall
	jc		error
	ret

error:
	mov		r15, rax	; save error
	call	___error	; retrieve address to errno
	mov		[rax], r15	; put errno in return value of ___error pointer
	mov		rax, -1
	ret
