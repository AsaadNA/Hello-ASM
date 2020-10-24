;program to print letters Capital | Small

.model small
.stack 100h
.data
    
    lB dw 'A' ;lower bound can be a | A
    uB dw 'Z' ;upper bound can be z | z
    

.code

main proc
             
    mov ax,@data
    mov ds,ax
    
    mov bx,uB
    sub bx,lB 
    add bx,1
    
    mov cx,bx
    mov dx,lB 
    mov ah,2
    print:
        int 21h
        add dx,1
    loop print
    
    mov ah,4ch
    int 21h
    
    main endp
end main