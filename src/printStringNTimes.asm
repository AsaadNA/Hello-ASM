;program to print a message 10 times

.model small
.stack 100h
.data

    msg db 'Fuck you$'

.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov cx,10
    mov ah,9
    print:
                    
        lea dx,msg
        int 21h 
        
        mov ah,2
        int 21h
        
        mov dl,10
        int 21h
        
        mov dl,13
        int 21h
        
        mov ah,9
        
    loop print
    mov ah,4ch
    int 21h
    
    main endp
end main
        
        