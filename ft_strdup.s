BITS	64

section	.text

global	_ft_strdup

_ft_strdup:
	xor		rcx, rcx
	jmp		_lencount

_lencount:
	cmp		
	inc		rcx
