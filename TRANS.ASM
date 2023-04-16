code segment
        assume cs:code
block:
        mov si,[0000h]
        mov bx,[0020h]

        mov cx,05h
loop1:
        mov ah,[si]
        mov [bx],ah

        inc si
        inc bx
        dec cx

        jnz loop1

        mov ah,4ch
        int 21h
code ends
end block
