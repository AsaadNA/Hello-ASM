;write a program that takes input as string from user and changes the case of last letter

letterChange macro s
    sub s,32
endm

.model small
.stack 100h
.data
    
    a db 10 dup('$')
    
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov si,offset a
    
    input:  
    
        mov ah,1
        int 21h
        cmp al,13
        je print
        mov [si],al
        inc si
        jmp input
        
    print:
        
        mov ah,2
        mov dl,10
        int 21h
        mov dl,13
        int 21h
        
        letterChange [si-1]  
        
        mov ah,9
        lea dx,a        
        int 21h
        
    mov ah,4ch
    int 21h
    
    main endp
end main
        