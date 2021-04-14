BITS	64

section	.text

global	_ft_strdup
extern	_ft_strlen
extern	_ft_strcpy
extern	_malloc

_ft_strdup:
	cmp		rdi, 0
	jz		error
	call	_ft_strlen	;rax = strlen(str)
	push	rdi
	mov		rdi, rax	;len = 1st arg
	inc		rdi
	call	_malloc		;rax = malloc(len)
	cmp		rax, 0
	jz		error
	pop		rdi
	mov		rsi, rdi
	mov		rdi, rax
	call	_ft_strcpy
	jmp		return

error:
	xor		rax, rax

return:
	ret

 ;▄████████ ███    █▄     ▄████████      
;███    ███ ███    ███   ███    ███      
 ;███    █▀  ███    ███   ███    █▀       
 ;███        ███    ███   ███             
;▀███████████ ███    ███ ▀███████████      
         ;███ ███    ███          ███      
  ;▄█    ███ ███    ███    ▄█    ███      
;▄████████▀  ████████▀   ▄████████▀
