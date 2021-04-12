BITS	64

section	.text

global	_ft_strcmp

_ft_strcmp:
	xor		rax, rax
	jmp		_increment

_increment:
	cmp		BYTE [rdi + rax], 0
	je		_compare
	mov		dl, BYTE [rsi + rax]
	cmp		BYTE [rdi + rax], dl
	jl		_inferior
	jg		_superior
	inc		rax
	jmp		_increment

_compare:
	mov		dl, BYTE [rsi + rax]
	cmp		BYTE [rdi + rax], dl
	jl		_inferior
	jg		_superior
	je		_equal

_inferior:
	mov		rax, -1
	ret

_superior:
	mov		rax, 1
	ret

_equal:
	mov		rax, 0
	ret

