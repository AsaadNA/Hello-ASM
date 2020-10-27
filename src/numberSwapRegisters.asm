;program to swap 2 numbers [with registers]

.model small
.stack 100h
.data
    
    a db '3'
    b db '4'
    
.code

main proc
            
            
    mov ax,@data
    mov ds,ax
    
    ;swapping here
    mov bl,a
    mov bh,b
    mov a,bh
    mov b,bl
    
    mov ah,2
    
    mov dl,a
    int 21h
    
    mov dl,b
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main
    