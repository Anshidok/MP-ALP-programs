data segment
        mg1 db 10,13,"Enter a number$"
        mg2 db 10,13,"Number is even$"
        mg3 db 10,13,"Number is odd$"
data ends
assume cs:code,ds:data
code segment
start:
        mov ax,data
        mov ds,ax

        lea dx,mg1
        mov ah,9h
        int 21h

        mov ah,1h
        int 21h

        mov bl,2
        div bl
        cmp ah,0
        je even1
        jmp odd

  even1:
        lea dx,mg2
        mov ah,9h
        int 21h
        jmp stop
  odd:
        lea dx,mg3
        mov ah,9h
        int 21h
        jmp stop
 stop:
        mov ah,4ch
        int 21h
code ends
end start
