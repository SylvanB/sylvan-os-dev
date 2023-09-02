print_string:
    pusha               ; store register values
    jmp string_check    ; jump to string check

string_check:
    cmp byte [bx], 0    ; check if end of string
                        ; cmp byte [bx] checks the byte at the address stored in bx

    je end              ; if so, end function
    jmp print_char      ; if not, print next character


print_char:
    mov ah, 0x0e        ; print character function
    mov al, [bx]        ; store character in al
    int 0x10            ; print al
    add bx, 1           ; increment string address
    jmp string_check    ; jump to string check, to continue printing

end:
    popa                ; restore register values
    ret                 ; return from function
