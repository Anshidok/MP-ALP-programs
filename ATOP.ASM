data segment
        num dw 3435h
        num1 db ?
data ends
assume cs:code,ds:data
code segment
start:
        mov ax,data
        mov ds,ax

        mov ax,num
        and al,0fh
        mov num1,al

        and ah,0fh
        rol ah,4
       

     
        add num1,ah
     

        mov ah,4ch
        int 21h
code ends
end start

