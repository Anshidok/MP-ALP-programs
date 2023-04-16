data segment
        str1 db 1,2,3,4,5
data ends
assume cs:code,ds:data
code segment
start:
      mov ax,data
      mov ds,ax

      mov cl,5
      lea bx,str1
      mov ah,0
      mov al,0
   l1:
      add ax,[bx]
      inc bx
      dec cl
      jnz l1
stop:
      mov ah,4ch
      int 21h
code ends
end start



