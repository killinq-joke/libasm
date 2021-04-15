BITS	64

global	_ft_atoi_base
extern	_ft_strlen
extern	_ft_indexer

_ft_atoi_base:
	xor		rcx, rcx				; i = 0
	xor		r10, r10				; res = 0
	mov		r8,	1					; sign = 1
	jmp		converter

converter:
	cmp		BYTE [rdi + rcx], 0		; si str[i] == 0
	jz		return					; return
	mov		r9,	rdi					; r9 = str
	mov		dil, BYTE [rdi + rcx]	; first arg = str[i]
	call	_ft_indexer				; si ft_indexer(str[i], base)
	cmp		rax, -1					; == -1
	je		return					; return
	mov		r11, rax				; r12 = ft_indexer(str[i], base)
	push	rdi						; str >> stack
	mov		rdi, rsi				; first arg = base
	call	_ft_strlen
	mul		r10						; res *= rax aka ft_strlen(base)
	add		r10, r11				; res += ft_indexer(str[i], base)
	mov		r10, rax				; res = res * ft_strlen(base) + ft_indexer(str[i], base)
	mov		rdi, r9					; str >> first arg
	inc		rcx						; i++
	jmp		converter


return:
	mov		rax, r10				; stack >> res
	mul		r8						; res *= sign
	mov		rax, r8
	ret
