;program to find the largest number in array

.model small
.stack 100h
.data
    
    arr db '1','5','3'
    
.code

main proc
    
    mov ax,@data
    mov ds,ax
    
    mov si , offset arr
    mov bl,[si]
    
    mov cx,3
    findLargest:
    
       cmp bl,[si + 1]
       jl swap
       inc si
    
    loop findLargest
    
    mov ah,2
    mov dl,bl
    int 21h
    
    mov ah,4ch
    int 21h
  
    swap:
    
        mov bl,[si + 1]
        inc si
        loop findLargest 

    main endp
end main
    