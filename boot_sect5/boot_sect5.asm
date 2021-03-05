	mov ah, 0x0e
	mov bp, 0x8000
	mov sp,  bp

	push 'A'		;Push characters on stack. Note, these are
	push 'B'		;Each one is 16-bit valvues. So the MSB is
	push 'C'		;is added by the assembler as 0x00.

	pop bx			;Pop the next value
	mov al, bl		;copy bl to al
	int 0x10		;Print (al)

	mov al, [0x7ffe]	;fetch the char at 0x8000 - 0x7ffe = 0x2 (i.e. 16 bits)

	int 0x10		;print (al)

	jmp $			; Jump Forever


	times 510-($-$$) db 0
	dw 0xaa55
