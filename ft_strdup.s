BITS	64

section	.text

global	_ft_strdup
extern	_ft_strlen
extern	malloc

_ft_strdup:
	xor		rcx, rcx	; i = 0
	xor		rsi, rsi	; dup = 0
	cmp		rdi, 0
	je		_exit
	call	_ft_strlen	; len = ft_strlen(rdi)
	push	rdi
	inc		rax
	mov		rdi, rax
	call	malloc
	mov		rsi, rax; dup = malloc(len)
	pop		rdi
	jmp		_increment
	
_increment:
	cmp		rcx, rax	; while i != len
	je		_exit
	mov		dl, BYTE [rdi + rcx]
	mov		BYTE [rsi + rcx], dl
	inc		rcx			; i++
	jmp		_increment

_exit:
	mov		rax, rsi
	ret

