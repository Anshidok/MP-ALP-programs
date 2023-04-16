data segment
        str1 db "ssm"
        str2 db "s"
        m1 db 10,13,"found$"
        m2 db 10,13,"not found$"
data ends
assume cs:code,ds:data
code segment
start:
        mov ax,data
        mov ds,ax
        mov es,ax

       lea si,str1
       mov cl,3h
       mov al,str2

       repne scasb
       jz found
       jmp notf

 found:
        lea dx,m1
        jmp stop
notf:
        lea dx,m2
        jmp stop
 stop:
        mov ah,9h
        int 21h

       mov ah,4ch
        int 21h
code ends
end start

