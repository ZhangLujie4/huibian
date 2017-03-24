
; You may customize this and other start-up templates; 
; The location of this template is c:\emu8086\inc\0_com_template.txt

org 100h
 
mov ax,37h
mov cl,16
div cl 
mov bx,ax
mov cl,6
mul cl
mov cl,10
div cl
add bx,ax
mov al,bh
mov ah,0
mov cl,10
div cl 
mov cl,ah 
add bl,al
cmp bl,10
jnl next
jmp exit
next:mov al,bl
      mov ah,0
      mov bl,10
      div bl
      mov bl,ah
      mov dl,al 
      add dl,'0'
      mov ah,2h
      int 21h 
exit:
mov dl,bl
add dl,'0'
mov ah,2h
int 21h      
mov dl,cl
add dl,'0'
mov ah,2h
int 21h
ret




