BITS	64

section	.text

global	_ft_strcpy

_ft_strcpy:
	xor		rax, rax 				;i = 0
	jmp		_increment

_increment:
	cmp		BYTE [rsi + rax], 0 	; if src[i] == 0
	je		_exit					; return
	mov		dl, BYTE [rsi + rax]
	mov		BYTE [rdi + rax], dl
	inc		rax
	jmp		_increment

_exit:
	mov		BYTE [rdi + rax], 0
	mov		rax, rdi
	ret
