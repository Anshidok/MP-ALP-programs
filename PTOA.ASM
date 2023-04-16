data segment
        num dw 54h
data ends
assume cs:code,ds:data
code segment
start:
        mov ax,data
        mov ds,ax

        mov ax,num
        and al,0fh
        add al,30h
        mov bl,al

        mov ax,num
        and al,0f0h
        rol al,4
        add al,30h
        mov bh,al

        mov ah,4ch
        int 21h
code ends
end start

