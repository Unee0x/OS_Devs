	[org 0x7c00]
	mov ah, 0x0e		; BIOS scrolling teletype function
	mov al, 'A'

loop:
	int 0x10		; Print al
	add al,  1
	cmp al, 'Z'
	jle loop


	jmp $			; endless jump
	times 510-($-$$) db 0
	dw 0xaa55
