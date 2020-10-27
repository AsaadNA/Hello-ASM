;program to take 2 inputs and compare them

.model small
.stack 100h
.data
    
    a db ?
    b db ?
    
    msg1 db 'Equal$'
    msg2 db 'Not Equal$'
    
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov ah,1
    int 21h
    mov a,al
    int 21h
    mov b,al
    mov bl,a
    cmp bl,b
    je equal
    
    mov ah,9
    lea dx,msg2
    int 21h
    
    mov ah,4ch
    int 21h
    
    equal:
        
        mov ah,9
        lea dx,msg1
        int 21h
        
    mov ah,4ch
    int 21h
    
    main endp
end main