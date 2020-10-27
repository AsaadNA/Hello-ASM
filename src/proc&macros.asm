;using macros and proc to print strings

printString macro s1
  mov ah,9  
  lea dx,s1
  int 21h
endm

.model small
.stack 100h
.data
    
    msg1 db 'hello$'
    msg2 db 'asaad$'
    
.code

main proc
    
    mov ax,@data
    mov ds,ax
    printString msg1
    call newline
    printString msg2
    
    mov ah,4ch
    int 21h
    
main endp

newline proc    
    mov ah,2
    mov dl,10
    int 21h
    mov dl,13
    int 21h
    ret    
newline endp
end main