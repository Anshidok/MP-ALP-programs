data segment
        n dw 5h
        op dw 0h
 data ends
 assume cs:code,ds:data
 code segment
 start:
        mov ax,data
        mov ds,ax

        mov ax,n
        mov bx,ax
   fact:
        dec bx
        mul bx
        mov cx,bx
        cmp cx,01h
        jnz fact
        add ah,30h
        add al,30h
        mov bx,ax
        mov ah,02h
        mov dl,bh
        int 21h

        mov ah,02h
        mov dl,bl
        int 21h

        mov ah,4ch
        int 21h
 code ends
 end start
