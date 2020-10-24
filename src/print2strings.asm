;Program to print 2 string on 2 different lines
 
;10->newLine
;13->Carraige return 
 
.model small
.stack 100h
.data
    
    msg1 db 'Duck You$'
    msg2 db 'I Am Talking To You$'
    
.code
main proc
    
    mov ax,@data
    mov ds,ax
    
    mov dx,offset msg1
    mov ah,9
    int 21h
    
    mov dl,10
    mov ah,2
    int 21h
    
    mov dl,13
    int 21h
    
    lea dx,msg2
    mov ah,9
    int 21h
    
    mov ah,4ch
    int 21h
    
    main endp
end main