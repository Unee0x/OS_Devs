[org 0x7c00]

mov dx, 10

	; if dx is < 10 -> print 't'
	
	;; else-> print 'T'
	cmp dx, 10
	jl less_than_10
	mov al, 'T'
	jmp endif

less_than_10:
	mov al, 't'
endif:

	mov ah, 0x0e
	int 0x10		;  print al

	jmp $			; Enless loop
	times 510-($-$$) db 0
	dw 0xaa55
