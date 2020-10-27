;program to swap numbers using stack

.model small
.stack 100h
.data
   
   a dw '1'
   b dw '2'

.code

main proc

   mov ax,@data
   mov ds,ax
   
   push a
   push b

   pop a
   pop b
   
   mov ah,2
   
   mov dx,a
   int 21h
   
   mov dx,b
   int 21h
   
   mov ah,4ch
   int 21h

   main endp
end main