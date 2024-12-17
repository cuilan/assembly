assume cs:codesg		; assume cs register name is codesg

codesg segment			; define cs codesg

start:	mov ax, 0123H	; start code, mov 0x0123 to ax register
		mov bx, 0456H	; mov 0x0456 to bx register
		add ax, bx		; ax = ax + ab
		add ax, ax		; ax = ax + ax
		
		mov ax, 4C00H	; mov 0x4C00 to ax register
		int 21H			; interrupt: code 0x21

codesg ends				; codesg ends: end segment

end start				; program end
