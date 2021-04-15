BITS	64

global	_ft_indexer

_ft_indexer:
	xor		rax, rax				; i = 0
	jmp		increment

increment:
	cmp		BYTE [rsi + rax], 0
	jz		exit
	cmp		[rsi + rax], dil
	je		return
	inc		rax
	jmp		increment

exit:
	mov		rax, -1

return:
	ret
