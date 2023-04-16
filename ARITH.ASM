data segment
        n1 dw 3h
        n2 dw 2h
data ends
        assume cs:code,ds:data
code segment
start:
        mov ax,data
        mov ds,ax

        mov ax,n1
        mov bx,n2

        add ax,bx

        mov ax,n1
        mul bx

        mov ax,n1
        sub ax,bx

        mov ah,4ch
        int 21h
code ends
end start
