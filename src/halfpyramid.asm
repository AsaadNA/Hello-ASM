;program to print a half pyramid

.model small
.stack 100h
.data
.code

main proc
    
    mov ah,2
    mov cx,9
    
    i:  
        push cx

        j:
            mov dl,'*'
            int 21h
        loop j    
        
        mov dl,13
        int 21h
        
        mov dl,10
        int 21h
        
        pop cx
            
    loop i
    
    mov ah,4ch
    int 21h
    
    main endp
end main