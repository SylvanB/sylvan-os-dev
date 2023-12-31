;
; A simple boot sector that prints a message to the screen using a BIOS routine.
;

mov ah, 0x0e ; int 10/ah = 0eh -> scrolling teletype BIOS routine

mov al, 'H'
int 0x10
mov al, 'e'
int 0x10
mov al, 'l'
int 0x10
mov al, 'l'
int 0x10
mov al, 'o'
int 0x10

jmp $       ; jump to current address = infinite loop

;
; Padding and magic number
;

times 510-($-$$) db 0   ; pad the boot sector with zeros until 510 bytes

dw 0xaa55               ; magic number for boot loader

