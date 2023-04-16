data segment
        str1 db "ssm"
        str2 db "ssm"
        m1 db 10,13,"same$"
        m2 db 10,13,"not same$"
data ends
assume cs:code,ds:data
code segment
start:
        mov ax,data
        mov ds,ax
        mov es,ax

        lea si,str1
        lea di,str2

        mov cl,3h
        rep cmpsb
        je same
        jmp nott
  same:
        lea dx,m1
        mov ah,9h
        int 21h
        jmp stop
 nott:
        lea dx,m2
        mov ah,9h
       int 21h
        jmp stop
 stop:
       mov ah,4ch
        int 21h
code ends
end start

