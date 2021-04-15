BITS	64
section .text

global	_ft_strlen
_ft_strlen:
	xor		rax, rax			; i = 0
	jmp		_increment

_increment:
	cmp		BYTE [rdi + rax], 0 ; str[i] == 0
	je		_exit
	inc		rax
	jmp		_increment

_exit:
	ret
