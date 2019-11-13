org 100h
; displaying user prompt   
lea dx, prompt_user
mov ah,9
int 21h

; taking the input
mov ah,1
int 21h

;move first number
mov bl, al 

; making a new line
mov dl, 0Ah
mov ah, 2
int 21h
   
;moving cursor to the initial point
mov dl, 0Dh
mov ah,2
int 21h

;2nd input
; displaying user prompt   
lea dx, prompt_user
mov ah,9
int 21h

; taking the input
mov ah,1
int 21h 

;move 2nd input
mov bh, al

;clearing the window
mov ah,0
int 10h

;perform comparison
cmp bl, bh 
jg bl_is_greater

;if line 39 didnt execute
;print bh
mov dl, bh
mov ah,2
int 21h

; print the result message string
lea dx, result_string
mov ah, 9
int 21h  

jmp exit





bl_is_greater: 
    ;print bl
    mov dl, bl
    mov ah,2
    int 21h  
    
    ; print the result message string
    lea dx, result_string
    mov ah, 9
    int 21h
    
   

   
   
exit:   
    ret


prompt_user DB "PLEASE ENTER NUMBER: $"
result_string DB " is the greater number.$"