[org 0x7c00]
mov al, [my_char]
mov ah, 0x0e		; BIOS Scrolling Teletype Function
int 0x10

my_char:	
	db 'X'

jmp $			; Endless jump - stop the cpu racing to execute
				; arbitrary code in memory.

times 510-($-$$) db 0	; Pad Boot sector with zeros until last 2 bytes.
dw 0xaa55		; Boot signature
