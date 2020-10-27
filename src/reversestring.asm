;program to reverse a string

.model small
.stack 100h
.data
   
   a db 'asaad'

.code

main proc

   mov ax,@data
   mov ds,ax

   mov si,offset a

   mov cx,5
   pushToStack:   
      push [si]
      inc si
   loop pushToStack

   mov ah,2
   mov cx,5
   print:
      pop [si]
      mov dl,[si]
      int 21h
   loop print

   mov ah,4ch
   int 21h

   main endp
end main


