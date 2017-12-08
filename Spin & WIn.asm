                                           .model small
.stack 100h
.data 
space db 032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,'$'

score db 032,'SPIN:'
spin db ?
      db 032,032,032,032,032,032,032,032,032,032
      db 'COINS:'
coin db ?
      db 010,013,'$' 
      
      
jackpot db 009,032,032,032,'JACKPOT','$'
luckey db 009,032,032,032,'LUCKY','$'
looser db 009,032,032,032,'LOOSER','$'
stating db 032,032,032,032,032,'NOT STARTED YET','$' 

first1 dw ?
second1 dw ?
third1 dw ?
forth1 dw ?
     
      
number_plate db '|-----|-----|-----|-----|'
             db 008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,010
             db '|',032,032,032,032,032 
             db '|',032,032,032,032,032
             db '|',032,032,032,032,032
             db '|',032,032,032,032,032,'|'
             db 008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,010,'|'
       first dw ?,032,' |'
      second dw ?,032,' |'
       third dw ?,032,' |'
       forth dw ?,032,' |'
             db 008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,010
             db '|',032,032,032,032,032 
             db '|',032,032,032,032,032
             db '|',032,032,032,032,032
             db '|',032,032,032,032,032,'|'
             db 008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,010
             db '|-----|-----|-----|-----|$' 
             
             
             
start_button db '|---------------------|'
             db  010,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008
             db '|    S  P  A  C  E    |'
             db  010,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008
             db '|---------------------|'
             db  010,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008,008
             db 032,032,032,032,032,'TO SPIN AGAIN!$'  
             
             
newline db 010,013,'$'

needed_space db 032,'$'

less_coin db 010,010,013,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,'YOU DONT HAVE ENOUGH COIN LEFT.',0ah,0dh,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,'PLEASE TRY AGAIN LATER!',0ah,0dh,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,'HIT "0" FOR MAIN MENU!',0ah,0dh,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,'HIT "E" TO EXIT!',,0ah,0dh,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,032,'$'


footer_msg db 010,013,010,013,009,009,032,032,032,032,032,'HIT "0" TO BACK TO THE MAIN MENU!',010,013,009,009,032,032,032,032,032,032,032,032,032,032,'HIT "SPACE" FOR RESPIN!$' 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
warning2 db 010,013,010,013,010,013,010,013,010,013,009,009,032,032,032,032,032,'HIT "0" TO BACK TO THE MAIN MENU!',010,013,'$'
upperspace db 0dh,0ah,0dh,0ah,0dh,0ah,0dh,0ah,"    $"
menu_plate db 032,032,032,032,032,032,032,032,032,032,'|-----------------------------------------------|'
             db 0dh,0ah
             db 032,032,032,032,032,032,032,032,032,032,032,032,032,032,'|                                               |'
              db 0dh,0ah
             db 032,032,032,032,032,032,032,032,032,032,032,032,032,032,'|                                               |'
             db 0dh,0ah
             db 032,032,032,032,032,032,032,032,032,032,032,032,032,032,'|                                               |'
             db 0dh,0ah
             db 032,032,032,032,032,032,032,032,032,032,032,032,032,032,'|                                               |'
             db 0dh,0ah
             db 032,032,032,032,032,032,032,032,032,032,032,032,032,032,'|             <<##>> SPIN AND WIN <<##>>        |'
             db 0dh,0ah
             db 032,032,032,032,032,032,032,032,032,032,032,032,032,032,'|                                               |'
             db 0dh,0ah
             db 032,032,032,032,032,032,032,032,032,032,032,032,032,032,'|                                               |'
             db 0dh,0ah
             db 032,032,032,032,032,032,032,032,032,032,032,032,032,032,'|                  1.START GAME                 |'
             db 0dh,0ah
             db 032,032,032,032,032,032,032,032,032,032,032,032,032,032,'|                  2.ABOUT GAME                 |'
             db 0dh,0ah
             db 032,032,032,032,032,032,032,032,032,032,032,032,032,032,'|                  3.GAME RULES                 |'
             db 0dh,0ah
             db 032,032,032,032,032,032,032,032,032,032,032,032,032,032,'|                  4.QUIT                       |'
             db 0dh,0ah
             db 032,032,032,032,032,032,032,032,032,032,032,032,032,032,'|                                               |'
             db 0dh,0ah
             db 032,032,032,032,032,032,032,032,032,032,032,032,032,032,'|                                               |'
             db 0dh,0ah
             db 032,032,032,032,032,032,032,032,032,032,032,032,032,032,'|                                               |'
             db 0dh,0ah
             db 032,032,032,032,032,032,032,032,032,032,032,032,032,032,'|                       @developed by"GUNG GALA"|'
             db 0dh,0ah
             
             db 032,032,032,032,032,032,032,032,032,032,032,032,032,032,'|-----------------------------------------------|$'
USER_NAME DB 0AH,0DH,032,032,032,032,032,032,032,032,032,032,009,009,032,032,"PLEASE ENTER YOUR NAME.",0AH,0DH,0ah,0dh,032,032,032,032,032,032,032,032,032,032,009,009,032,032,032,032,032,032,032,032,032,"$"
          
CHOOSE DB 0AH,0DH,0ah,0dh,032,032,032,032,032,032,032,032,032,032,009,009,032,032,032,032,"CHOOSE TO CONTINUE!",0AH,0DH,"$"
ABOUT_THIS_GAME DB 032,032,032,032,032,032,032,032,032,032, 0AH,0DH,032,032,032,032,032,032,032,032,032,032,"NOTHING HERE IS UNIQUE!",0AH,0DH,032,032,032,032,032,032,032,032,032,032,"OF-COURSE WE STOLE THE IDEA FROM THE INTERNET OR WHEREVER!",0AH,0DH, 
                DB 032,032,032,032,032,032,032,032,032,032, "ACTUALLY THIS SHOULD NOT CONCERN YOU. JUST PLAY AND ENJOY!",0AH,0DH,0AH,0DH,032,032,032,032,032,032,032,032,032,032,"#ASSEMBLY LANGUAGE PROJECT",0AH,0DH,0AH,0DH,032,032,032,032,032,032,032,032,032,032,"PERTICIPATEROS:",0AH,0DH,032,032,032,032,032,032,032,032,032,032,"1.AMANULLAH AMAN",0AH,0DH,
                DB 032,032,032,032,032,032,032,032,032,032,"2.SAHIDULLAH FAHIM",0AH,0DH,032,032,032,032,032,032,032,032,032,032,"3.AFSOS BABA",0AH,0DH,"$"
;THANK_YOU_MSG DB 0AH,0DH,032,032,032,032,032,032,032,032,032,032,"THANKS FOR PLAYING!",0AH,0DH,032,032,032,032,032,032,032,032,032,032,"HOPE YOU HAD A GREAT TIME WITH IT!$"
GAME_RULES DB 0AH,0DH,032,032,032,032,032,032,032,032,032,032,"1.PRESS SPACE FOR SPIN",0AH,0DH,032,032,032,032,032,032,032,032,032,032,"2.FOR SERIAL NUMBER (LUCKY) POINT VALUE 1 COIN",0AH,0DH,032,032,032,032,032,032,032,032,032,032,"3.FOR ALL SAME NUMBER(JACKPOT) POINT VALUE 5 COIN$" 

warning_msg db 009,009,009,032,032,032,032,'WRONG KEY PRESSED!',010,013,'$'
thank db  010,013,010,013,010,013,010,013,010,013,010,013,010,013,010,013,009,009,009,032,032,032,032,'THANKS FOR PLAYING!$' 


sapce_for_name db 010,013,010,013,010,013,010,013,0ah,0dh,009,009,009,032,032,032,032,032,032,032,'$'
buff        db  26        ;MAX NUMBER OF CHARACTERS ALLOWED (25).
            db  ?         ;NUMBER OF CHARACTERS ENTERED BY USER.
            db  26 dup(0) ;CHARACTERS ENTERED BY USER.
please db ',PLEASE$'                       
                       

.code
main proc
  mov ax,@data
  mov ds,ax
  
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  menu_start:
  
   mov ax,03h
  int 10h
 lea dx,upperspace
    mov ah,9
    int 21h
    
    
    lea dx,menu_plate
    mov ah,9
    int 21h 
    
    
    
    SELECT_OPTION:
    
     
    lea dx,USER_NAME
    mov ah,9
    int 21h
    
   
    call get_name
    
    lea dx,CHOOSE
    mov ah,9
    int 21h
    
    menu_input:
    MOV AH,1
    INT 21H
    
    CMP AL,"1"
    JE main_game_start
    CMP AL,"3"
    JE RULES
    CMP AL,"2"
    JE ABOUT_GAME
    CMP AL,"4"
    JE exit
    
     lea dx,warning_msg
    mov ah,9
    int 21h
    jmp menu_input
   
     
    ABOUT_GAME:
     mov ax,03h
    int 10h
    
    LEA DX,ABOUT_THIS_GAME
    MOV AH,9
    INT 21H
    lea dx,warning2
    mov ah,9
    int 21h
   input_about: 
   mov ah,1
   int 21h 
   
    cmp al,'0'
     je menu_start
     
    
     lea dx,warning_msg
    mov ah,9
    int 21h
    jmp input_about
    
    
    
   
    
    RULES:
     mov ax,03h
     int 10h 
    
    LEA DX,GAME_RULES
    MOV AH,9
    INT 21H
   
   lea dx,warning2
    mov ah,9
    int 21h
   input_rules: 
   mov ah,1
   int 21h 
   
    cmp al,'0'
     je menu_start
     
    
     lea dx,warning_msg
    mov ah,9
    int 21h
    jmp input_rules
    
    

;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
  
  
  
  
main_game_start:

 mov ax,03h
 int 10h
  
  mov bl,'9'
  mov bh,'0'
  
 
;;;;;;;;;;;;;;;;;;;;;;;;;;DESIGN;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
design_panel:
  mov spin,bh
  mov coin,bl

  lea dx,space
  mov ah,9
  int 21h
  
  
  lea dx,score
  mov ah,9
  int 21h 
  
  lea dx,newline
  mov ah,9
  int 21h
  
  lea dx,newline
  mov ah,9
  int 21h
  
  lea dx,newline
  mov ah,9
  int 21h
   
  lea dx,space
  mov ah,9
  int 21h 
  
  
  
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  cmp cl,1
  je _jackpot
  cmp cl,2
  je _luckey
  cmp cl,3
  je _looser
  
   
  ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
  lea dx,stating
  mov ah,9
  int 21h
  jmp other
  _jackpot:
  lea dx,jackpot
  mov ah,9
  int 21h
  jmp other
  
  _luckey:
  lea dx,luckey
  mov ah,9
  int 21h
  jmp other
   
  _looser:
  lea dx,looser
  mov ah,9
  int 21h
    
  other:
  lea dx,newline
  mov ah,9
  int 21h
  
  lea dx,space
  mov ah,9
  int 21h
  
  lea dx,number_plate
  mov ah,9
  int 21h
  
  lea dx,newline
  mov ah,9
  int 21h
  
  lea dx,space
  mov ah,9
  int 21h
  
  lea dx,needed_space
  mov ah,9
  int 21h 
  
  lea dx,start_button
  mov ah,9
  int 21h
  
  lea dx,sapce_for_name
  mov ah,9
  int 21h
  
  ;DISPLAY STRING.                   
  mov ah, 9 ;SERVICE TO DISPLAY STRING.
  mov dx, offset buff + 2 ;MUST END WITH '$'.
  int 21h
  
   lea dx,please
  mov ah,9
  int 21h
 
  
  lea dx,footer_msg
  mov ah,9
  int 21h 
  
  lea dx,newline
  mov ah,9
  int 21h
    
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
 input:
 
     mov ah,1
     int 21h
     cmp al,032
     jne check_for_main_menu
     jmp start_spin
 
 check_for_main_menu:
     cmp al,'0'
     je menu_start
     
     lea dx,warning_msg
    mov ah,9
    int 21h
    jmp input
     
     
 
 
 ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;

   start_spin: 
   
   inc bh
   sub bl,2
   cmp bl,'0'
   jl not_enough_coin
   
    
   MOV AH, 00h  ; interrupts to get system time        
   INT 1AH      ; CX:DX now hold number of clock ticks since midnight      

   mov  ax, dx
   xor  dx, dx
   mov  cx, 10    
   div  cx       ; here dx contains the remainder of the division - from 0 to 9

   add  dl, '0'  ; to ascii from '0' to '9'
   
   mov forth,dx 
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;  
    MOV AH, 00h  ; interrupts to get system time        
   INT 1AH      ; CX:DX now hold number of clock ticks since midnight      

   mov  ax, dx
   xor  dx, dx
   mov  cx, 10    
   div  cx       ; here dx contains the remainder of the division - from 0 to 9

   add  dl, '0'  ; to ascii from '0' to '9'
   
   mov third,dx
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   
    MOV AH, 00h  ; interrupts to get system time        
   INT 1AH      ; CX:DX now hold number of clock ticks since midnight      

   mov  ax, dx
   xor  dx, dx
   mov  cx, 10    
   div  cx       ; here dx contains the remainder of the division - from 0 to 9

   add  dl, '0'  ; to ascii from '0' to '9'
   
   mov second,dx
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;   
    MOV AH, 00h  ; interrupts to get system time        
   INT 1AH      ; CX:DX now hold number of clock ticks since midnight      

   mov  ax, dx
   xor  dx, dx
   mov  cx, 10    
   div  cx       ; here dx contains the remainder of the division - from 0 to 9

   add  dl, '0'  ; to ascii from '0' to '9'
   
   mov first,dx
;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
;;;;;;;;compare;;;;;;;;;;;; 
    mov ax,first
    mov first1,ax
    
    mov ax,second
    mov second1,ax
    
    
    mov ax,third
    mov third1,ax
    
    
    mov ax,forth
    mov forth1,ax
    ;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;; 
    
    mov ax,second1
    cmp first1,ax
    je check_equal_two
    jmp check_sub


check_equal_two:
    mov ax,third1
    cmp first1,ax
    je check_equal_three
    jmp check_sub
    
    
    
check_equal_three:
    mov ax,forth1
    cmp first1,ax
    je winner
    jmp dmn_looser
    
    
winner:
    mov cl,1
    jmp clean    
    
    
check_sub:     
   mov ax,second1
   sub first1,ax
    cmp first1,001
    je check_sub_two
    jmp recheck_sub
     
check_sub_two:    

    mov ax,third1
    sub second1,ax
    cmp second1,001
    je check_sub_three
    jmp dmn_looser 

check_sub_three:
        
      mov ax,forth1
    sub third1,ax
    cmp third1,001
    je dmn_luckey
    jmp dmn_looser


dmn_luckey: 
inc bl
mov cl,2
jmp clean

recheck_sub:
   mov ax,third1
   sub forth1,ax
    cmp forth1,001
    je recheck_sub_two
    jmp dmn_looser
     
recheck_sub_two:    

    mov ax,second1
    sub third1,ax
    cmp third1,001
    je recheck_sub_three
    jmp dmn_looser 

recheck_sub_three:
        
      mov ax,first1
    sub second1,ax
    cmp second1,001
    je dmn_luckey
    jmp dmn_looser



       

dmn_looser:
    mov cl,3




;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;;
clean:
 mov ax,03h
int 10h

jmp design_panel


not_enough_coin:
 mov ax,03h
int 10h 
lea dx,sapce_for_name
  mov ah,9
  int 21h
  
  ;DISPLAY STRING.                   
  mov ah, 9 ;SERVICE TO DISPLAY STRING.
  mov dx, offset buff + 2 ;MUST END WITH '$'.
  int 21h

 lea dx,less_coin
  mov ah,9
  int 21h
   input_lesscoin:
   mov ah,1
   int 21h 
   
    cmp al,'0'
     je menu_start
     
    cmp al,'E'
    je exit
    
    lea dx,newline
    mov ah,9
    int 21h 
    
     lea dx,warning_msg
    mov ah,9
    int 21h
    jmp input_lesscoin:
 
  
   exit: 
    mov ax,03h
int 10h
   lea dx,thank
  mov ah,9
  int 21h
   mov ah,4ch
   int 21h
  

 
    
    main endp 
get_name proc near
    
    ;CAPTURE STRING FROM KEYBOARD.                                    
            mov ah, 0Ah ;SERVICE TO CAPTURE STRING FROM KEYBOARD.
            mov dx, offset buff
            int 21h                 

;CHANGE CHR(13) BY '$'.
            mov si, offset buff + 1 ;NUMBER OF CHARACTERS ENTERED.
            mov cl, [ si ] ;MOVE LENGTH TO CL.
            mov ch, 0      ;CLEAR CH TO USE CX. 
            inc cx ;TO REACH CHR(13).
            add si, cx ;NOW SI POINTS TO CHR(13).
            mov al, '$'
            mov [ si ], al ;REPLACE CHR(13) BY '$'.            


    
    
    
    ret
    get_name endp
    
end main