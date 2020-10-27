;program to print an array

.model small
.stack 100h
.data
    
    a db 'abcdefghi'

.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov si,offset a
    mov cx,10
    mov ah,2
    mov dl,[si]
       
    print:
    
        int 21h    
        inc si
        mov dl,[si]
        
    loop print
    
    mov ah,4ch
    int 21h
    
    main endp
end main