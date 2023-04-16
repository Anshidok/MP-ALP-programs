data segment
        str1 db "ssmptc$"
        str2 db ?
        len db 6h
data ends
assume cs:code,ds:data
code segment
start:
        mov ax,data
        mov ds,ax
        mov es,ax

        mov si,0h
        mov di,0h
        add di,6h
        mov cl,6h
    lp:
        mov al,si[str1]
        mov di[str2],al
        inc si
        dec di
        jnz lp


        mov ah,4ch
        int 21h
code ends
end start


