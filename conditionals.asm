;
; Demonstrates the use of conditional assembly
;

mov bx, 41      ; bx = 41

cmp bx, 4       ; if (bx >= 4) {
jge ge_four     ;   goto ge_four
                ; }

cmp bx, 40      ; else if (bx < 40) {
jl l_fourty     ;   goto l_fourty
                ; }

jmp else        ; else {
                ;   goto else
                ; }

ge_four:
    mov al, 'A' ;  al = 'A'
    jmp end

l_fourty:
    mov al, 'B' ;  al = 'B'
    jmp end

else:
    mov al, 'C' ;  al = 'C'
    jmp end

end:
    mov ah, 0x0e
    int 0x10    ; print al

    jmp $

    times 510 - ($ - $$) db 0
    dw 0xaa55
