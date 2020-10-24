;Program to print name using char 

.model small
.stack 100h
.code
.data

main proc
   
   mov dl,'a'
   mov ah,2
   int 21h
   mov dl,'s'
   int 21h
   mov dl,'a'
   int 21h
   mov dl,'a'
   int 21h
   mov dl,'d'
   int 21h
   mov ah,4ch
   int 21h

   main endp
end main