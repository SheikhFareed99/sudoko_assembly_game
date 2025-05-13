[org 0x0100]
jmp start
prev: dw 0
helper: db 2
count1: dw 0
count2: dw 0
count3: dw 0
countRow: dw 3
countCol: dw 2            
message1: db ' Hello, peeps! Welcome to Suduko game  '
rule_go:db'press r to see the rules...'
rule:db'Rules.'
length1: dw 39
message2: db ' LETS START '
length2: dw 12
line: db '----------'
length3: dw 3
line2: db '|||'
len_line:dw 2
line_v:db'||'
location: dw 0x5CA,0x862,0x0A28, 0x0A5C, 0x0AC4,0xADE,0xCA8,0xB12,0x0AF8,0x0CDC,0xB6E,0xBA2
move: dw 2,160
message3: db 'Play'
message4: db 'quit'
length4: dw 4
message6: db 'Replay'
length6: dw 6
message7: db ' Mistake:'
length7: dw 9
mistake: dw 0   
msg_start: db 'Start'
len_start: dw 5
msg_end: db 'Thanks for playing our sudoko game...'
msg_end2: db 'Hope to see you again :)'
len_end: dw 37,24
You_Win: db ' You Win  '
You_lose:db' You Lose '
 status_count: dw 0
length5: dw 10
message:     db   ' Timer:', 0
count: dw 3
num2: db '1','2','3','4','5','6','7','8','9'
num1 times 81 db 0
num times 81 db 0
	
	press_e:db'press enter to go back'
	
   score: db ' Game scores:'
   score_len:dw 13
   
    timer: db ' Timer:'
    timer_len:dw 7
	
	 mode: db 'Mode:'
     mode_len:dw 5
	 
	 easy_m:db 'Easy $'
	 med_m:db 'Medium $'
	 hard_m:db  'Hard $'
	 m_len1:dw 4
	 m_len2:dw 6
	 
	 mode_curr:dw 0
	 mode_total:dw 3
	 
	 attribute:dw 0x17
	 
	 undo_msg:db ' Undo '
	 undo_len:dw 6
	 
	 wel: db' WELCOME TO     '
	 wel_len:dw 17
	 prev_c:db 0x3e
	 load:db' Loading...'

DaRows: db 0
DaCols: db 0	 

mode_helper: db 1
saveJagah1 times 2000 dw 0
saveJagah2 times 2000 dw 0
	 
	 rule1: db'1: Fill the 9x9 grid so each row, column, and 3x3 subgrid contains ',0
     rule01:db' the numbers 1 to 9 without repeating.',0
	 rule2: db'2: Game begins with some numbers filled in as clues. Use these as a ',0
	 rule02:db'starting point.',0
	 rule3: db'3: There are 3 modes  easy , medium and hard',0
	 rule4: db'   you have to complete game in 6 minutes & 6 mistake count',0
	 rule5: db'   you have to complete game in 5 minutes & 4 mistake count',0
	 rule6: db'   you have to complete game in 3 minutes & 2 mistake count',0
	 rule7: db'   Press U for undo,F for full screen,E for notes and esc for quit ',0
	 
	 e:db'For easy:   '
	 m:db 'For medium:'
	 h:db'For hard:   '
	
	notes_place:  db 0,0,0,0,0,0,0,0,0
						db 0,0,0,0,0,0,0,0,0
						db 0,0,0,0,0,0,0,0,0
						db 0,0,0,0,0,0,0,0,0
						db 0,0,0,0,0,0,0,0,0
						db 0,0,0,0,0,0,0,0,0
						db 0,0,0,0,0,0,0,0,0
						db 0,0,0,0,0,0,0,0,0
						db 0,0,0,0,0,0,0,0,0
	saveNum: db 0
	
coordinates: dw 326,338,350,362,374,386,398,410,422
             dw 966,978,990,1002,1014,1026,1038,1050,1062
             dw 1606,1618,1630,1642,1654,1666,1678,1690,1702
             dw 2246,2258,2270,2282,2294,2306,2318,2330,2342
             dw 2886,2898,2910,2922,2934,2946,2958,2970,2982
             dw 3526,3538,3550,3562,3574,3586,3598,3610,3622
             dw 326,338,350,362,374,386,398,410,422
             dw 966,978,990,1002,1014,1026,1038,1050,1062
             dw 1606,1618,1630,1642,1654,1666,1678,1690,1702
			 
coordinates1:dw 166,178,190,202,214,226,238,250,262
					dw 486,498,510,522,534,546,558,570,582
					dw 806, 818, 830, 842, 854, 866, 878, 890, 902
					dw 1126, 1138, 1150, 1162, 1174, 1186, 1198, 1210, 1222
					dw 1446, 1458, 1470, 1482, 1494, 1506, 1518, 1530, 1542
					dw 1766,1778,1790,1802,1814,1826,1838,1850,1862
					dw 2086,2098,2110,2122,2134,2146,2158,2170,2182
					dw 2406,2418,2430,2442,2454,2466,2478,2490,2502
					dw 2726,2738,2750,2762,2774,2786,2798,2810,2822
			 
time_counter: dw 0
time_seconds: db 0
time_minutes: db 0
time_display: db '00:00'
oldtimerisr :dd 0
stopPlace: dw 0,0,0,0,0,0,0,0,0
freq:
	dw 0xefbf,0xbd32,0x7408,0x3600,0x3600,0x7408,0x2106
	dw 0xefbf,0xbd32,0x7408,0x3600,0x3600,0x7408,0x2106
	dw 0xefbf,0xbd32,0x7408,0x3600,0x3600,0x7408,0x2106
	dw 0xefbf,0xbd32,0x7408,0x3600,0x3600,0x7408,0x2106
	dw 0
    ; dw 1046, 1397, 1568, 1760, 2093, 2349, 2637, 2794
    ; dw 349, 440, 523, 659, 880, 987, 1046, 1174
    ; dw 1568, 1865, 2093, 2349, 2637, 2794, 2945
    ; dw 698, 784, 880, 987, 1046, 1174, 1318, 1480
    ; dw 987, 880, 698, 659, 523, 440, 349, 349
    ; dw 0

dura:
		; dw 0x0600,0xefbf,0xbd00,0x0100,0xefbf,0xbd00,0x0100,0x0100
		; dw 0x0600,0xefbf,0xbd00,0x0100,0xefbf,0xbd00,0x0100,0x0100
		; dw 0x0600,0xefbf,0xbd00,0x0100,0xefbf,0xbd00,0x0100,0x0100
		; dw 0x0600,0xefbf,0xbd00,0x0100,0xefbf,0xbd00,0x0100,0x0100
		; dw 0
    dw 2, 2, 2, 3, 3, 2, 3
    dw 3, 2, 3, 2, 3, 2, 3
    dw 2, 3, 2, 2, 2, 3, 2
    dw 3, 2, 3, 3, 2, 2, 3
    dw 0

ori_dura:
    dw 4, 3, 4, 3, 4, 2, 4, 5
    dw 3, 2, 4, 2, 3, 5, 3, 4
    dw 2, 4, 3, 2, 4, 4, 5, 2
    dw 3, 4, 3, 5, 2, 2, 6, 2
    dw 3, 4, 4, 5, 3, 2, 3, 2
    dw 0


kbisr_store:dw 0,0
	press_enter:dw 0
	
	;kbisr hook
	
	kbisr:
pusha
 in al,0x60
cmp al, 1ch  ; Check Enter key press
je set_flag
cmp al, 9ch  ; Check Enter key release
jne exit_kb
set_flag:
mov word[press_enter], 1
 exit_kb:
 mov al,0x20
 out 0x20,al
popa

iret
	
	;sound system
	
	melody_pointer: dw 0  
	
	restore_dura:
	pusha


	mov si,ori_dura
	mov di,dura
	mov cx,40
	xor ax,ax
	
	loop_d:
	mov ax,[si]
    mov word[di],ax
	add si,2
	add di,2
	loop loop_d
	popa
   
	ret
speakerOn:
        and ax, 0xfffe
        push ax
        cli
        mov al, 0xb6
        out 0x43, al
        pop ax
        out 0x42, al
        mov al, ah
        out 0x42, al
        in al, 0x61
        or al, 3
        out 0x61, al
        sti
        ret

; disable PC speaker
speakerOff:
    IN AL, 0x61
    AND AL, 0xFC                ; Disable speaker
    OUT 0x61, AL
    RET
		
printStu:
    push bp
    mov bp,sp
    push es
    push ax
    push cx
    push di
    
    mov ax,0xb800
    mov es,ax
    mov cx,[bp+6]
    mov si,[bp+4]
    mov bx,[bp+8]
    mov ah,0x7e
doit:
    push cx
    mov cx,9
    more2:
        mov al,[si]
        add al,'0'
        mov di,[bx]
        mov [es:di],ax    
        add bx,2
        inc si
        loop more2    
        pop cx
    loop doit

    pop di
    pop cx
    pop ax
    pop es
    pop bp
    ret 6
	
randomNo:
   push bp
   mov bp, sp 
   MOV AH, 00h  ; interrupts to get system time        
   INT 1AH      ; CX:DX now hold number of clock ticks since midnight      

   mov  ax, dx
   xor  dx, dx
   mov  cx, [bp+4]    
   div  cx

   pop bp
RET 2

strlen:
	push bp
	mov bp,sp
	push es
	push cx
	push di
	les di, [bp+4] 
	mov cx, 0xffff
	xor al, al 
	repne scasb 
	mov ax, 0xffff 
	sub ax, cx
	dec ax 
	pop di
	pop cx
	pop es
	pop bp
	ret 4
               
time_easy:
		CMP byte [time_minutes], 06
		jge winScreen
        cmp word[mistake],8
		jge winScreen
		cmp word[count2],5
		ja k111
		jmp k11
		
time_med:
		CMP byte [time_minutes], 05
		jge winScreen
        cmp word[mistake],5
		jge winScreen
		cmp word[count2],5
		ja k111
		jmp k11
		
	
	

		
	
isr_time:
    PUSH AX
    PUSH BX
    PUSH CX
    PUSH DX
    PUSH SI
	

    ; Increment timer counter
    INC word [time_counter]
    CMP word [time_counter], 18
    JL skip_time_increment
    MOV word [time_counter], 0
    INC byte [time_seconds]
    CMP byte [time_seconds], 60
    JL update_display
    MOV byte [time_seconds], 0
    INC byte [time_minutes]
    CMP byte [time_minutes], 60
    JL update_display
    MOV byte [time_minutes], 0

update_display:
    CALL ConvertToDisplay
    MOV CX, 20
    MOV DX, 4
	push di
	push ax

	  MOV AX, 80
    MOV BX, 5
    MUL BX
    ADD AX, 68
    MOV DI, AX
    SHL DI, 1
	push di
	
    CALL WriteString
	pop ax
	pop di
	
skip_time_increment:
    MOV SI, [melody_pointer]
    MOV AX, [freq + SI]
    MOV BX, [dura + SI]
    OR AX, AX
    JZ restart_melody
    CALL speakerOn
    DEC BX
    MOV [dura + SI], BX
    JNZ skip_increment_note
    ADD SI, 2
    MOV [melody_pointer], SI

skip_increment_note:
    JMP end_isr

restart_melody:
    CALL speakerOff
    MOV word [melody_pointer], 0
call restore_dura

end_isr:
    POP SI
    POP DX
    POP CX
    POP BX
    POP AX
    JMP FAR [oldtimerisr]


Bat:
push bp
mov bp,sp
pushA

mov ax,0xb800
mov es,ax


mov al,80
mul byte[bp+6]
add ax,[bp+4]
shl ax,1
mov dx,ax

mov di,ax
;                                                "BODY"
;------------------------------------------------------------------------------------------------------------------;
mov cx,3
mov ax,0x045f
add di,8
loop10:
mov word[es:di],ax
sub di,2
loop loop10

add di,160
mov cx,7
add di,10
mov ax,0x045f
loop22:
mov word[es:di],ax
sub di,2
loop loop22
push di
add di,8
mov word[es:di],0x0720

pop di
add di,164
mov cx,5
add di,8
mov ax,0x045f
loop3:
mov word[es:di],ax
sub di,2
loop loop3
;                                             "MOUTH"
;------------------------------------------------------------------------------------------------------------------;
push di
add di,6
mov word[es:di],0x075E
pop di
;                                          "ENHANCING_BODY"
;------------------------------------------------------------------------------------------------------------------;
add di,160
mov cx,3
add di,8
mov ax,0x045f
loop4:
mov word[es:di],ax
sub di,2
loop loop4

;                                              "EYES"
;------------------------------------------------------------------------------------------------------------------;
    mov di, dx
    add di, 160
    add di, 4
    mov word [es:di], 0x7A20  ; Left eye (bright white)

    ; Right Eye
    add di, 4
    mov word [es:di], 0x7A20  ; Right eye



popA
pop bp
ret 4
    ;    code  logic   start
	
	

	                                ;clear screen

clear: 
    push es
    push ax
    push di
    mov ax, 0xb800
    mov es, ax 
    mov di, 0 
    next: 
        mov word [es:di], 0x7020
        add di, 2
        cmp di, 4000
        jne next
    pop di
    pop ax
    pop es
    ret
	
	clear2: 
    push es
    push ax
    push di
    mov ax, 0xb800
    mov es, ax 
    mov di, 0 
    next1: 
        mov word [es:di], 0x7A20
        add di, 2
        cmp di, 4000
        jne next1
    pop di
    pop ax
    pop es
    ret
	    
		clear3: 
    push es
    push ax
    push di
    mov ax, 0xb800
    mov es, ax 
    mov di, 0 
    next3: 
        mov word [es:di], 0x7720
        add di, 2
        cmp di, 4000
        jne next3
    pop di
    pop ax
    pop es
    ret
	              ;filling board
				  
		board_filler:
		
		
		pusha
		mov cx,8
    mov si,boardNum
    xor di,di
	save33:
	mov al,[si]
    mov [showNum+di],al
    add si,10
    add di,10
    loop save33
	
	mov cx,8
    mov si,boardNum
	add si,8
    xor di,di
	add di,8
	save34:
	mov al,[si]
    mov [showNum+di],al
    add si,8
    add di,8
    loop save34
	
	mov cx,8
    mov si,boardNum
	add si,4
    xor di,di
	add di,4
	save35:
	mov al,[si]
    mov [showNum+di],al
    add si,9
    add di,9
    loop save35
	
	cmp word[mode_curr],2
	je exit_save
	mov cx,8
    mov si,boardNum
	add si,10
    xor di,di
	add di,10
	save36:
	mov al,[si]
    mov [showNum+di],al
    add si,9
    add di,9
    loop save36
    cmp word[mode_curr],1
	je exit_save
	mov cx,8
    mov si,boardNum
	add si,7
    xor di,di
	add di,7
	save37:
	mov al,[si]
    mov [showNum+di],al
    add si,9
    add di,9
	loop save37
	


	
	exit_save:
		mov cx,9
    xor di,di
	add di,6
	save38:

    mov byte[showNum+di],0xf0
    add si,8
    add di,8
	loop save38
	
	   mov al,[boardNum+18]
	   mov byte[showNum+18],al
	   mov al,[boardNum+38]
	   mov byte[showNum+38],al
	   mov al,[boardNum+44]
	   mov byte[showNum+44],al
	   mov al,[boardNum+72]
	   mov byte[showNum+72],al
       mov byte[showNum+37],0xf0
	   mov byte[showNum+25],0xf0
	    mov al,[boardNum+71]
	   mov byte[showNum+71],al
	   
	   mov al,[boardNum+78]
	   mov byte[showNum+78],al
	   
	   popa
	   ret
	              
				  
				        ; printing screen of main
						

printing: 
    push bp
    mov bp, sp
    push es
    push ax
    push cx
    push si
    push di
    push bx
    mov bx, [bp+6]
    mov ax, 0xb800
    mov es, ax
    mov si, [bp+12]
    mov cx, [bp+10]
    mov di, [bp+8]
    mov ah, [bp+4]
nextc: 
    mov al, [si]
    mov [es:di], ax
    add di, bx
    add si, 1
    loop nextc
    pop bx
    pop di
    pop si
    pop cx
    pop ax
    pop es
    pop bp
    ret 10    
	
delayit:
	pusha
	mov al, 0
	mov ah, 86h
	mov cx, 1
	mov dx, 1
	int 15h
	popa
	ret
	
fullScreen:
	   call clrscr             ; call the clrscr subroutine 
                          ; grid 9x9
						  
              mov word[count],0
              mov word[count1],2
fullloop1:
              call printstr1           ; call the printstr1 subroutine 
              add word[count],2
              cmp word[count],20
              jne fullloop1
             mov word[count],0
             mov word[count1],2
fullloop2: 
				mov ax, 13
				push ax
				mov ax,6
				push ax
              mov ax,18
                push ax
              call printstr2           ; call the printstr2 subroutine 
              add word[count],6
 
             cmp word[count],60
              jne fullloop2
              mov word[count1],0
              mov word[count],58
			  
		                   ; game score	 
	
	call side_bar	
	
	push coordinates1
    mov ax,9
    push ax
    push showNum
    call printStu


mov word[prev],2
fullgame_loop:

    push cx
    mov ax,80
    mov cx,12
    mul cx
    add ax,70
    shl ax,1
    mov di,ax
    pop cx
    push di
    mov ax,[mistake]
    mov ah,0x74
    add al,'0'
    mov [es:di],ax
	
	call validation_rows
	push di
	push ax
	mov ax,0xb800
	mov es,ax
	 mov di,3504
	mov ax,[valid_rows]
    mov ah,0x74
	add al,'0'
	mov [es:di],ax
	pop ax
	pop di
	
	;valid coloumn check
	call validation_column
	push di
	push ax
	mov ax,0xb800
	mov es,ax
	mov di,3832
	mov ax,[valid_coloum]
    mov ah,0x74
	add al,'0'
	mov [es:di],ax
	pop ax
	pop di
	
	; game complete 

	;score number check
	call clear_score

	push ax	
	mov ax,[valid_rows]
	add ax,[valid_coloum]
	mov cx,50
	mul cl
	add ax,[score_game]
	push ax
	mov ax,1426
	push ax
	call printnum
	pop ax
    pop di
	
	cmp byte[valid_rows],9
	je win_declare

fullforward:
;blinking
    push ax
    push bx
    push cx
        mov ax,0xb800
        mov es,ax
        mov di,[prev]
        mov dx,[es:di]
		cmp dh,0xf0
		je fulllt2
        cmp dl,'-'
        jne fulllt1
        mov word[es:di],0x7020
        jmp fulllt2
        fulllt1:
		cmp dh,0xf4
		jne fulllt2
        mov dh,[prev_c]
        mov [es:di],dx
        fulllt2:
        mov cx,[count2]
        shl cx,1
        mov bx,[count3]
        shl bx,1
        mov ax,9
        mul cx
        add bx,ax
        mov di,[coordinates1+bx]
        mov [prev],di
    pop cx
    pop bx
    pop ax
        mov dx,[es:di]
        cmp dl,' '
        jne fullnewone
        mov ah,0xf4
        mov al,'-'
        mov word[es:di],ax  
        jmp fullll
        fullnewone:
		mov byte[prev_c],dh
        mov dh,0xf4
        mov word[es:di],dx
		
    fullll:  
	    cmp word[mode_curr],0
		jne fulllater
		CMP byte [time_minutes], 06
		jge winScreen
        cmp word[mistake],8
		jge winScreen
		jmp fullk11
		
		fulllater:
		cmp word[mode_curr],1
	    CMP byte [time_minutes], 05
		jge winScreen
        cmp word[mistake],5
		jge winScreen
		jmp fullk11
		
		CMP byte [time_minutes], 03
		jge winScreen
        cmp word[mistake],3
		jge winScreen
		
fullk11:
 
    xor ax,ax
    int 16h
	mov [saveNum],al
    cmp al,0x39
    jg fullcont
    cmp al,0x31
    jl fullcont
	
    push di
    push ax
    mov cx,[count2]
    mov bx,[count3]
    mov ax,9
    mul cx
    add ax,bx
    mov di,ax
    pop ax
    sub al,0x30
	mov dl,[showNum+di]
		add dl,0x30
    cmp dl,0x20
    jne fullcont
    cmp [boardNum+di],al

    mov ah,0x74
    jne fulllate
	 mov ah,0x7e
	jmp fulllate2

	fullcontii:
    mov [showNum+di],al

    add al,0x30
	mov dx,di
    pop di
    mov di,[prev]

    push bx
	push si
	mov si,[es:di]
	mov bx,[undo_count]
    mov [es:di],ax
	mov word[stack1+bx],si
	mov word[stack2+bx],di
	mov word[stack3+bx],dx
	pop si
	pop bx
	add word[undo_count],2
  jmp fullgame_loop
	
	
	fulllate2:

 pusha
 mov bx,[undo_count]
 mov word[stack5+bx],1
 add word[score_game],20
	
	    mov ax, wrong_in2
    push ax
    push word [wrong_len2]
    mov ax,80
    mov cx,14
    mul cx
    add ax,61
    shl ax,1
    push ax
    push word [move]
    mov ax,0x74
    push ax
    call printing
	popa
	
	jmp fullcontii
	
fulllate:

  pusha
   mov bx,[undo_count]
 mov word[stack5+bx],0


    mov ax, wrong_in
    push ax
    push word [wrong_len]
    mov ax,80
    mov cx,14
    mul cx
    add ax,61
    shl ax,1
    push ax
    push word [move]
    mov ax,0x34
    push ax
    call printing
	
    inc word[mistake]
	popa
	jmp fullcontii
	
fullcont:
cmp ah,0x16
je undo_key3

    cmp ah,1b
    jne fullk22
    jmp winScreen
	
fullk22:
    cmp ah, 0x4B        ;check if left arrow key is pressed
    jne fullw2
    cmp word[count3],0
    jne fullw1
    mov word[count3],8
    mov word[countRow],2
    jmp fullgame_loop
	
fullw1:
    sub word[count3],1
    sub word[countRow],12
    jmp fullgame_loop
fullw2:
    cmp ah, 0x48        ;check if up arrow key is pressed
    jne fullw4
    cmp word[count2],0
    jne fullw3
    mov word[count2],8
    mov word[countCol],20
	jmp fullgame_loop
fullw3:
    sub word[count2],1
    sub word[countCol],2
    jmp fullgame_loop

fullw4:
    cmp ah, 0x50        ;check if down arrow key is pressed
    jne fullw6
    cmp word[count2],8
    jne fullw5
    mov word[count2],0
    mov word[countCol],4
	jmp fullgame_loop
fullw5:
    add word[count2],1
    add word[countCol],2
    jmp fullgame_loop

;remaining board
fullw6:
    cmp ah, 0x4D    ;check if right arrow key is pressed
    jne fullw8
    cmp word[count3],8
    jne fullw7
    mov word[count3],0
    mov word[countRow],2
    jmp fullgame_loop
 fullw7:
    add word[count3],1
    add word[countRow],12
    jmp fullgame_loop


fullw8:
    cmp al,0x66
	je hola
	jmp fullgame_loop
	hola:
	xor di,di
	mov cx,2000
	fullrestore_main2:
		mov word[saveJagah1+di],0
		add di,2
		loop fullrestore_main2

	xor di,di
	mov cx,2000
	fullrestore_other:
		mov word[saveJagah2+di],0
		add di,2
		loop fullrestore_other
	jmp safeness
	
	
clrscr:       push es 
              push ax 
              push di 
 
              mov  ax, 0xb800 
              mov  es, ax             ; point es to video base 
              mov  di, 0              ; point di to top left column 
 
nextloc:      mov  word [es:di], 0x7020 
				         ; clear next char on screen (change 1st byte for background color) 
              add  di, 2              ; move to next screen location 
              cmp  di, 8000           ; has the whole screen cleared 
              jne  nextloc            ; if no clear next position 
 
              pop  di 
              pop  ax 
              pop  es 
              ret 
 
; subroutine to print a string at top left of screen 
; takes address of string and its length as parameters 
printstr:     push bp 
              mov  bp, sp 
              push es 
              push ax 
              push cx 
              push si 
              push di 
 
              mov  ax, 0xb800 
              mov  es, ax             ; point es to video base 
              mov al,80

                ;reposition
                mul byte [count]	;y
                add ax,6		;x
                shl ax,1		;multiply by 2

              mov  di, ax             ; point di to top left column 
              mov  si, [bp+4]         ; point si to timer 
              mov  cx, [bp+0xa]         ; load length of string in cx 
              mov  ah, [bp+8]          ; normal attribute fixed in al 
 
nextchar:     mov  al, [si]           ; load next char of string 
              mov  [es:di], ax        ; show this char on screen 
              add  di, 2              ; move to next screen location 
              add  si, 1              ; move to next char in string 
              loop nextchar           ; repeat the operation cx times 

              pop  di 
              pop  si 
              pop  cx 
              pop  ax 
              pop  es 
              pop  bp 
              ret  4

printstr1:     push bp 
              mov  bp, sp 
              push es 
              push ax 
              push cx 
              push si 
              push di 
 
              mov  ax, 0xb800 
              mov  es, ax             ; point es to video base 
              mov al,80

                ;reposition
                mul byte[count]
                shl ax,1

              mov  di, ax             ; point di to top left column
              mov  cx, 55          ; how many time '_' prints
              cmp word[count1],2
              jne same
              mov ah,0x07
              mov word[count1],0
              jmp Val
        same:
            add word[count1],1
              mov  ah, 0x70         ; normal attribute fixed in al
              mov al,'-' 
              jmp nextchar1
        Val:    
              mov  al, ' '           ; load '_'
nextchar1: 
              mov  [es:di], ax        ; show  on screen 
              add  di, 2              ; move to next screen location 
              loop nextchar1          ; repeat the operation cx times 

              pop  di 
              pop  si 
              pop  cx 
              pop  ax 
              pop  es
              pop  bp 
              ret
			  
printstr2:     
              push bp 
              mov  bp, sp 
              push es 
              push ax 
              push cx 
              push si 
              push di 
 
              mov  ax, 0xb800 
              mov  es, ax             ; point es to video base 
              mov al,80

                ;reposition
                mov bl,0
                mul bl
                add ax,[count]
                shl ax,1

              mov  di, ax             ; point di to top left column
			  add di,160
              mov  cx, [bp+4]             ; load how many '|' are there 
              cmp word[count1],2
              jne Same
              mov ah,0x07
              mov word[count1],0
              jmp val
        Same:
            add word[count1],1
              mov  ah, 0x70      ; normal attribute fixed in al 
              mov al,'|'
              mov bx,[bp+8]
              ;add di,2 
              jmp nextchar2
        val:
              mov  al, ' '           ; load '|'
nextchar2:
            cmp bx,cx
            jne skp
            sub bx,[bp+6]
            mov word[es:di],0x0720
            add di,160
            loop nextchar2
            jmp ot
            skp:
              mov  [es:di], ax        ; show this char on screen 
              add  di, 160              ; move to next screen location 
              loop nextchar2           ; repeat the operation cx times 
            ot:
              pop  di 
              pop  si 
              pop  cx 
              pop  ax 
              pop  es 
              pop  bp 
              ret 6
			  
			                    ;sidebar func 
								
	side_bar:
								
		mov ax,0x71
      push ax		
	 mov ax,0 ; rows
	 push ax
	 mov ax,55  ;cols
	 push ax
	 mov ax,25  ;width
	 push ax
	  mov ax,25    ;len
	 push ax
	 
	     call print_rect23
		 
	 mov ax,0x07
     push ax		
	 mov ax,0 ; rows
	 push ax
	 mov ax,55 ;cols
	 push ax
	 mov ax,25 ;width
	 push ax
	  mov ax,2    ;len
	 push ax
	 	     call print_rect23						


								
										                   ; game score	 
						   
	mov ax, score
    push ax
    push word [score_len]
	mov ax,80
	mov cx,8
	mul cx
	add ax,60
	shl ax,1
    push ax
    push word [move]
	mov ax,0x71
	push ax
    call printing
	
	                                  ;print Timer text on game screen
									  
    mov ax, timer
    push ax
    push word [timer_len]
	mov ax,80
	mov cx,5
	mul cx
	add ax,60
	shl ax,1
    push ax
    push word [move]
	mov ax,0x71
	push ax
    call printing
	
	                               ;print mode text in game screen
	
	mov ax, mode
    push ax
    push word [mode_len]
	mov ax,80
	mov cx,2
	mul cx
	add ax,61
	shl ax,1
    push ax
    push word [move]
	mov ax,0x71
	push ax
    call printing
			 
    

	      ; print selected mode in game screen
		  
      cmp word[mode_curr],0
	  jne check2
	  mov ax,easy_m
	  mov bx,[m_len1]
	  jmp print_mode1
	  check2:
	  cmp word[mode_curr],1
	  jne check3
	  mov ax,med_m
	  mov bx,[m_len2]
	  jmp print_mode1
	  check3:
	  mov ax,hard_m
	  mov bx,[m_len1]
	
    print_mode1:

    push ax
    push bx
	mov ax,80
	mov cx,2
	mul cx
	add ax,66
	shl ax,1
    push ax
    push word [move]
	mov ax,0x74
	push ax
    call printing
                    ; mistake text
    mov ax, message7
    push ax
    push word [length7]
    mov ax,80
    mov cx,12
    mul cx
    add ax,60
    shl ax,1
    push ax
    push word [move]
    mov ax,0x71
    push ax
    call printing
   


                ;num
    mov ax,num2
    push ax
    mov ax,9
    push ax
    mov ax,80
    mov cx,16
    mul cx
    add ax,60
    shl ax,1
    push ax
    mov ax,4
    push ax
    mov ax,0x71
    push ax
    call printing

                ;border around the num
    mov ax, line
    push ax
    push word [length2]
    mov ax,80
    mov cx,15
    mul cx
    add ax,60
    shl ax,1
    push ax
    push word [move]
    mov ax,0x71
    push ax
    call printing

    mov ax, line
    push ax
    push word [length2]
    mov ax,80
    mov cx,15
    mul cx
    add ax,68
    shl ax,1
    push ax
    push word [move]
    mov ax,0x71
    push ax
    call printing

    mov ax, line
    push ax
    push word [length2]
    mov ax,80
    mov cx,17
    mul cx
    add ax,60
    shl ax,1
    push ax
    push word [move]
    mov ax,0x71
    push ax
    call printing

    mov ax, line
    push ax
    push word [length2]
    mov ax,80
    mov cx,17
    mul cx
    add ax,68
    shl ax,1
    push ax
    push word [move]
    mov ax,0x71
    push ax
    call printing

                                                           ; undo button
	   
	mov ax, undo_msg
    push ax
    push word [undo_len]
	mov ax,80
    mov cx,19
    mul cx
    add ax,66
    shl ax,1
    push ax
    push word [move]
	mov ax,0x1f
	push ax
    call printing
	
	;  valid rows printing
	
	 mov ax, valid_row
    push ax
    push word 11
    mov ax,80
    mov cx,21
    mul cx
    add ax,60
    shl ax,1
    push ax
    push word [move]
    mov ax,0x71
    push ax
    call printing

                     ;valid coloum printing
					 
	mov ax,valid_coloumns
    push ax
    push word 15
    mov ax,80
    mov cx,23
    mul cx
    add ax,60
    shl ax,1
    push ax
    push word [move]
    mov ax,0x71
    push ax
    call printing

	ret
	
	
			win_declare:
			  mov word[status_count],1
			  jmp winScreen
other:
    mov cx,2000
		xor di,di
		screenSave3:
			mov ax,[es:di]
			mov word[saveJagah1+di],ax
			add di,2
			loop screenSave3
    
   call clrscr             ; call the clrscr subroutine 

                          ; grid 9x9
						  
              mov word[count],0
              mov word[count1],2
loop11:       
              call printstr1           ; call the printstr1 subroutine 
              add word[count],4
              cmp word[count],16
              jne loop11
             mov word[count],0
             mov word[count1],2

loop12: 
			mov ax,13
			push ax
            mov ax,11
			push ax
            push ax
              call printstr2           ; call the printstr2 subroutine 
              add word[count],6
 
             cmp word[count],60
              jne loop12
              mov word[count1],0
              mov word[count],58
			  
			  

		 call side_bar
		 					 ;show num
	push coordinates
    mov ax,3
    push ax
    push showNum+54
    call printStu

	jmp game_loop1
	
	otherSave:
		mov cx,2000
		xor di,di
		screenSave2:
			mov ax,[es:di]
			mov word[saveJagah1+di],ax
			add di,2
			loop screenSave2

		mov cx,2000
		xor di,di
		screenLoad2:
			mov ax,[saveJagah2+di]
			cmp ah,0xf5
			je sameway
			cmp ah,0xf4
			je ok1
			and ax,0x7fff
			jmp nein
			ok1:
			mov ah,0x7e
			jmp nein
			sameway: 
			mov ax,0x7020
			nein:
			mov [es:di],ax
			add di,2
			loop screenLoad2
;blinking
game_loop1:
    push cx
    mov ax,80
    mov cx,12
    mul cx
    add ax,70
    shl ax,1
    mov di,ax
    pop cx
    push di
    mov ax,[mistake]
    mov ah,0x74
    add al,'0'
    mov [es:di],ax
	push ax
	mov ax,[score_game]
	push ax
	mov ax,1426
	push ax
	
		                  ;valid rows check
					  
	call validation_rows
	push di
	push ax
	mov ax,0xb800
	mov es,ax
	 mov di,3504
	mov ax,[valid_rows]
    mov ah,0x74
	add al,'0'
	mov [es:di],ax
	pop ax
	pop di
	
	;valid coloumn check
	call validation_column
	push di
	push ax
	mov ax,0xb800
	mov es,ax
	mov di,3832
	mov ax,[valid_coloum]
    mov ah,0x74
	add al,'0'
	mov [es:di],ax
	pop ax
	pop di
	
	;score number check
	call clear_score

	push ax	
	mov ax,[valid_rows]
	add ax,[valid_coloum]
	mov cx,50
	mul cl
	add ax,[score_game]
	push ax
	mov ax,1426
	push ax
	call printnum
	pop ax
    pop di
	cmp byte[valid_rows],9
	je win_declare
	
forward1:
;blinking
    push ax
    push bx
    push cx
        mov ax,0xb800
        mov es,ax
        mov di,[prev]
        mov dx,[es:di]
		cmp dh,0xf0
		je lt12
        cmp dl,'-'
        jne lt11
        mov word[es:di],0x7020
        jmp lt12
        lt11:
		cmp dh,0xf4
		jne lt12
        mov dh,[prev_c]
        mov [es:di],dx
        lt12:
        mov cx,[count2]
        shl cx,1
        mov bx,[count3]
        shl bx,1
        mov ax,9
        mul cx
        add bx,ax
        mov di,[coordinates+bx]
        mov [prev],di
    pop cx
    pop bx
    pop ax
        mov dx,[es:di]
		cmp word[es:di-2],0x6020
		je ll
        cmp dl,' '
        jne newone1
        mov ah,0xf5
        mov al,'-'
        mov word[es:di],ax  
        jmp ll1
        newone1:
		mov byte[prev_c],dh
        mov dh,0xf4
        mov word[es:di],dx
   
		ll1:  
			cmp word[mode_curr],0
			je time_easy
			cmp word[mode_curr],1
			je time_med
			CMP byte [time_minutes], 03
			jge winScreen
			cmp word[mistake],3
			jge winScreen
k111:
 
     xor ax,ax
    int 16h
	mov [saveNum],al
    cmp al,0x39
    jg cont1
    cmp al,0x31
    jl cont1
	
	push ax
	push cx
	mov cx,[count2]
    mov bx,[count3]
    mov ax,9
    mul cx
    add ax,bx
    mov bx,ax
	pop cx
	pop ax
	
	cmp byte[notes_place+bx],1
	jne jstNUM1
	pusha
	
	
	mov ah,0x0b
	storingTime1:
		push ax
		mov cx,[count2]
        shl cx,1
        mov bx,[count3]
        shl bx,1
        mov ax,9
        mul cx
        add bx,ax
		mov di,[coordinates+bx]
		sub di,164
		mov bx,1
		add bx,'0'
		mov cx,3
		pop ax
		mov al,[saveNum]
		alofIt1:
			push  cx
			mov cx,3
			checkForIt1:
				cmp bl,al
				je Stoore1
				add di,4
				inc bx
				loop checkForIt1
			add di,148
			pop cx
		loop alofIt1
		
		Stoore1:
			cmp word[es:di],0x6020
			je sahiHa1
			mov word[es:di],0x6020
			jmp great1
		sahiHa1:
			mov word[es:di],ax
	great1:	

	
	popa 
	
	jmp game_loop1

	jstNUM1:
		push di
		push ax
		mov cx,[count2]
		mov bx,[count3]
		mov ax,9
		mul cx
		add ax,bx
		mov di,ax
		pop ax
		sub al,0x30
		 mov dl,[showNum+di]
		add dl,0x30
		
		
         cmp dl,0x20
          jne look
		cmp [boardNum+di],al
	    mov ah,0x74
		jne latee
		mov ah,0x7e
		jmp latee2
		conti:
		
		
		mov [showNum+di],al
	
		add al,0x30
		mov dx,di
		pop di
		mov di,[prev]

		push bx
		push si
		mov si,[es:di]
		mov bx,[undo_count]
		mov [es:di],ax
		mov word[stack1+bx],si
		mov word[stack2+bx],di
		mov word[stack3+bx],dx
		pop si
		pop bx
		add word[undo_count],2
		jmp game_loop1
  
    look:
  pop di
  xor di,di
  jmp cont1
  
latee2:

 pusha
 mov bx,[undo_count]
 mov word[stack5+bx],1
 add word[score_game],20
	
	    mov ax, wrong_in2
    push ax
    push word [wrong_len2]
    mov ax,80
    mov cx,14
    mul cx
    add ax,61
    shl ax,1
    push ax
    push word [move]
    mov ax,0x73
    push ax
    call printing
	popa
	
	jmp conti
	
latee:

  pusha
   mov bx,[undo_count]
 mov word[stack5+bx],0
 cmp word[score_game],10
 jl nope1
 sub word[score_game],10

nope1:
    mov ax, wrong_in
    push ax
    push word [wrong_len]
    mov ax,80
    mov cx,14
    mul cx
    add ax,61
    shl ax,1
    push ax
    push word [move]
    mov ax,0x34
    push ax
    call printing
	
    inc word[mistake]
	popa
	jmp conti
	
cont1:
cmp ah,16h
je undo_key2
    cmp ah,1b
    jne k122
    jmp winScreen
	
 k122:
    cmp ah, 0x4B        ;check if left arrow key is pressed
    jne w12
    cmp word[count3],0
    jne w11
    mov word[count3],8
    mov word[countRow],51
    jmp game_loop1

w11:
    sub word[count3],1
    sub word[countRow],6
    jmp game_loop1
w12:
    cmp ah, 0x48        ;check if up arrow key is pressed
    jne w14
    cmp word[count2],6
    jne w13
    sub word[count2],1
    mov word[countCol],22
    jmp main2Save
w13:
    sub word[count2],1
    sub word[countCol],4
    jmp game_loop1

w14:
    cmp ah, 0x50        ;check if down arrow key is pressed
    jne w16
    cmp word[count2],8
    jne w15
    mov word[count2],0
    mov word[countCol],2
    jmp main2Save
w15:
    add word[count2],1
    add word[countCol],4
    jmp game_loop1

;remaining board
w16:
    cmp ah, 0x4D    ;check if right arrow key is pressed
    jne w18
    cmp word[count3],8
    jne w17
    mov word[count3],0
    mov word[countRow],3
    jmp game_loop1
w17:
    add word[count3],1
    add word[countRow],6
    jmp game_loop1

w18:
    cmp al,0x65
    jne w19
	
	mov dx,[es:di]
	cmp dh,0x60
	je goo2
	cmp dh,0x70
	je goo2
	cmp dh,0x0e
	je goo2
	cmp dl,0x2d
	jne game_loop1
	goo2:
	;notes
	pusha
	mov ax,0xb800
	mov es,ax
	mov ax,80
	mov bx,[countCol]
	mov cx,[countRow]
	sub bx,1
	sub cx,2
	mul bx
	add ax,cx
	shl ax,1
	mov di,ax

	push di
	push ax
	push cx
	push bx
	mov cx,[count2]
    mov bx,[count3]
    mov ax,9
    mul cx
    add ax,bx
    mov di,ax
	pop bx
	pop cx
	pop ax
	
	cmp byte[notes_place+di],0
	je kool1
    mov dx,0x7020	
	mov byte[notes_place+di],0
	jmp forIt1
	kool1:	
	mov dx,0x6020
	mov byte[notes_place+di],1
	forIt1:
		pop di
		mov cx,3
		space_loopStr1:
			push cx
			mov cx,5
			space_loopDown1:
				mov word[es:di],dx
				add di,2
			loop space_loopDown1
			pop cx
			add di,150
		loop space_loopStr1
	
	popa
	jmp game_loop1
	
	w19:
	 cmp al,0x66
	jne game_loop1
	
	jmp fullScreen
	  ; undo functionality
	
undo_key2:
	
	pusha
	cmp word[undo_count],0
	je exit_undo
	mov bx,[undo_count]
	sub bx,2
	mov si,[stack3+bx]
	mov ax,[stack1+bx]
	mov di,[stack2+bx]
	cmp al,0x2d
	je haveii
	haveee:
    sub al,0x30
    mov [showNum+si],al
	add al,0x30 
	mov ah,0x77
	mov [es:di],ax
	mov word[undo_count],bx
	cmp word[score_game],0
		je no_decreasee
	sub word[score_game],20
	exit_undo:
	popa
	jmp game_loop1
	haveii:
 mov al,0x20
 jmp haveee
 
  no_decreasee:
  jmp exit_undo
  
main2:
	mov byte[helper],2
	
    mov byte[DaCols],0
    mov byte[DaRows],0
	
    mov word[mistake],0
    mov cx,10
    push cx
    call randomNo

    mov ax,dx
    mov bx,81
    mul bx
    mov si,board
    add si,ax
    xor di,di
    mov cx,bx
save1:
    mov al,[si]
    mov [boardNum+di],al
    inc si
    inc di
    loop save1

	mov cx,81
    mov si,boardNum
    xor di,di
	mov bl,[mode_helper]
	
save2:
    push cx
    mov cl,[helper]
    push cx
    call randomNo
    pop cx
	cmp bx,dx
	jb dontSave
	regular:
	mov al,[si]
    mov [showNum+di],al
    jmp later
    dontSave:
    mov byte[showNum+di],0xf0
    later:
    add byte[helper],3
	;mov dh,0x09
    ;add dl,0x30
    ;mov [es:bx],dx
    inc si
    inc di
    loop save2
	
	
	               ; random
	call board_filler
	
	

	xor AX, AX
    MOV ES, AX
    MOV BX, [ES:8*4]
    MOV [oldtimerisr], BX    
    MOV BX, [ES:8*4 + 2]
    MOV [oldtimerisr+2], BX   


    MOV WORD [ES:8*4], isr_time  
    MOV WORD [ES:8*4 + 2], CS     
	
safeness:
	mov word[countRow],3
	 mov word[countCol],2
	mov word[count2],0
    mov word[count3],0
  main_loop:
  
    STI
   

   call clrscr             ; call the clrscr subroutine 

                          ; grid 9x9
						  
              mov word[count],0
              mov word[count1],2
loop1:       
              call printstr1           ; call the printstr1 subroutine 
              add word[count],4
              cmp word[count],28
              jne loop1
             mov word[count],0
             mov word[count1],2

loop2: 
				mov ax,13
				push ax
				mov ax,12
				push ax
              mov ax,24
                push ax
              call printstr2           ; call the printstr2 subroutine 
              add word[count],6
 
             cmp word[count],60
              jne loop2
              mov word[count1],0
              mov word[count],58


   call side_bar
   ; show numbers on grid
   push coordinates
       mov ax,6
    push ax
    push showNum
    call printStu
	
   jmp game_loop
	
	
	main2Save:
		mov cx,2000
		xor di,di
		screenSave1:
			mov ax,[es:di]
			mov word[saveJagah2+di],ax
			add di,2
			loop screenSave1
		
		mov cx,2000
		xor di,di
		screenLoad1:
			mov ax,[saveJagah1+di]
			cmp ah,0xf5
			je sameway1
			cmp ah,0xf4
			je ok
			and ax,0x7fff
			jmp nein1
			ok:
			mov ah,0x7e
			jmp nein1
			sameway1: 
			mov ax,0x7020
			nein1:
			mov [es:di],ax
			add di,2
			loop screenLoad1
			
		
  
game_loop:
                      ; mistake check 
    push cx
    mov ax,80
    mov cx,12
    mul cx
    add ax,70
    shl ax,1
    mov di,ax
    pop cx
    push di
    mov ax,[mistake]
    mov ah,0x74
    add al,'0'
    mov [es:di],ax
	                  ;valid rows check
					  
	call validation_rows
	push di
	push ax
	mov ax,0xb800
	mov es,ax
	 mov di,3504
	mov ax,[valid_rows]
	mov ah,0x74
	add al,'0'
	mov [es:di],ax
	pop ax
	pop di
	
	;valid coloumn check
	call validation_column
	push di
	push ax
	mov ax,0xb800
	mov es,ax
	mov di,3832
	mov ax,[valid_coloum]
	mov ah,0x74
	add al,'0'
	mov [es:di],ax
	pop ax
	pop di
	
	; game complete 

	
	;score number check
	call clear_score

	push ax	
	mov ax,[valid_rows]
	add ax,[valid_coloum]
	mov cx,50
	mul cl
	add ax,[score_game]
	push ax
	mov ax,1426
	push ax
	call printnum
	pop ax
    pop di
	cmp byte[valid_rows],9
	je win_declare

forward:
;blinking
    push ax
    push bx
    push cx
        mov ax,0xb800
        mov es,ax
        mov di,[prev]
        mov dx,[es:di]
		cmp dh,0xf0
		je lt2
        cmp dl,'-'
        jne lt1
        mov word[es:di],0x7020
        jmp lt2
        lt1:
		cmp dh,0xf4
		jne lt2
        mov dh,[prev_c]
        mov [es:di],dx
        lt2:
        mov cx,[count2]
        shl cx,1
        mov bx,[count3]
        shl bx,1
        mov ax,9
        mul cx
        add bx,ax
        mov di,[coordinates+bx]
        mov [prev],di
    pop cx
    pop bx
    pop ax
        mov dx,[es:di]
		cmp word[es:di-2],0x6020
		je ll
        cmp dl,' '
        jne newone
        mov ah,0xf5
        mov al,'-'
        mov word[es:di],ax  
        jmp ll
        newone:
		mov byte[prev_c],dh
        mov dh,0xf4
        mov word[es:di],dx
    ll:  
	    cmp word[mode_curr],0
	    je time_easy
		cmp word[mode_curr],1
	    je time_med
		CMP byte [time_minutes], 03
		jge winScreen
        cmp word[mistake],3
		jge winScreen
		
k11:
 
    xor ax,ax
    int 16h
	mov [saveNum],al
    cmp al,0x39
    jg cont
    cmp al,0x31
    jl cont
	
	push ax
	push cx
	mov cx,[count2]
    mov bx,[count3]
    mov ax,9
    mul cx
    add ax,bx
    mov bx,ax
	pop cx
	pop ax

	cmp byte[notes_place+bx],1
	jne jstNUM
	pusha
	
	mov ah,0x0b
	
	storingTime:
		push ax
		mov cx,[count2]
        shl cx,1
        mov bx,[count3]
        shl bx,1
        mov ax,9
        mul cx
        add bx,ax
		mov di,[coordinates+bx]
		sub di,164
		mov bx,1
		add bx,'0'
		mov cx,3
		pop ax
		mov al,[saveNum]
		alofIt:
			push  cx
			mov cx,3
			checkForIt:
			cmp bl,al
			je Stoore
			add di,4
			inc bx
			loop checkForIt
			add di,148
			pop cx
		loop alofIt
		
		Stoore:
			cmp word[es:di],0x6020
			je sahiHa
			mov word[es:di],0x6020
			jmp great
		sahiHa:
			mov word[es:di],ax
	
	great:
	popa 
	jmp game_loop


	jstNUM:
	
    push di
    push ax
    mov cx,[count2]
    mov bx,[count3]
    mov ax,9
    mul cx
    add ax,bx
    mov di,ax
    pop ax
    sub al,0x30
	mov dl,[showNum+di]
		add dl,0x30
    cmp dl,0x20
    jne cont
    cmp [boardNum+di],al
	    mov ah,0x74

    jne late
    mov ah,0x7e
	jmp late2
	contii:
    mov [showNum+di],al
  
    add al,0x30
	mov dx,di
    pop di
    mov di,[prev]

    push bx
	push si
	mov si,[es:di]
	mov bx,[undo_count]
    mov [es:di],ax
	mov word[stack1+bx],si
	mov word[stack2+bx],di
	mov word[stack3+bx],dx
	pop si
	pop bx
	add word[undo_count],2
  jmp game_loop
	
	
		late2:

 pusha
 mov bx,[undo_count]
 mov word[stack5+bx],1
 add word[score_game],20
	
	    mov ax, wrong_in2
    push ax
    push word [wrong_len2]
    mov ax,80
    mov cx,14
    mul cx
    add ax,61
    shl ax,1
    push ax
    push word [move]
    mov ax,0x73
    push ax
    call printing
	popa
	
	jmp contii
	
late:

  pusha
   mov bx,[undo_count]
 mov word[stack5+bx],0
 cmp word[score_game],10
 jl nope
 sub word[score_game],10

nope:
    mov ax, wrong_in
    push ax
    push word [wrong_len]
    mov ax,80
    mov cx,14
    mul cx
    add ax,61
    shl ax,1
    push ax
    push word [move]
    mov ax,0x34
    push ax
    call printing
	
    inc word[mistake]
	popa
	jmp contii
	
cont:
cmp ah,0x16
je undo_key
    cmp ah,1b
    jne k22
    jmp winScreen
	
k22:
    cmp ah, 0x4B        ;check if left arrow key is pressed
    jne w2
    cmp word[count3],0
    jne w1
    mov word[count3],8
    mov word[countRow],51
    jmp game_loop
	
w1:
    sub word[count3],1
    sub word[countRow],6
    jmp game_loop
w2:
    cmp ah, 0x48        ;check if up arrow key is pressed
    jne w4
    cmp word[count2],0
    jne w3
    mov word[count2],8
    mov word[countCol],10
	cmp word[saveJagah2],0
	jne fine1
	jmp other
	fine1:
		jmp otherSave
w3:
    sub word[count2],1
    sub word[countCol],4
    jmp game_loop

w4:
    cmp ah, 0x50        ;check if down arrow key is pressed
    jne w6
    cmp word[count2],5
    jne w5
    add word[count2],1
    mov word[countCol],2
    cmp word[saveJagah2],0
	jne fine2
	jmp other
	fine2:
		jmp otherSave
w5:
    add word[count2],1
    add word[countCol],4
    jmp game_loop

;remaining board
w6:
    cmp ah, 0x4D    ;check if right arrow key is pressed
    jne w8
    cmp word[count3],8
    jne w7
    mov word[count3],0
    mov word[countRow],3
    jmp game_loop
 w7:
    add word[count3],1
    add word[countRow],6
    jmp game_loop


w8:
    cmp al,0x65
    jne w9
	
	mov dx,[es:di]
	cmp dh,0x30
	je goo1
	cmp dh,0x60
	je goo1
	cmp dh,0x0b
	je goo1
	cmp dl,0x2d
	jne game_loop
	goo1:
	;notes
	pusha
	mov ax,0xb800
	mov es,ax
	mov ax,80
	mov bx,[countCol]
	mov cx,[countRow]
	sub bx,1
	sub cx,2
	mul bx
	add ax,cx
	shl ax,1
	mov di,ax

	push di
	push ax
	push cx
	push bx
	mov cx,[count2]
    mov bx,[count3]
    mov ax,9
    mul cx
    add ax,bx
    mov di,ax
	pop bx
	pop cx
	pop ax
	
	cmp byte[notes_place+di],0
	je kool
    mov dx,0x7020	
	mov byte[notes_place+di],0
	jmp forIt
	kool:	
		mov dx,0x6020
		mov byte[notes_place+di],1
	forIt:
		pop di
		mov cx,3
		space_loopStr:
			push cx
			mov cx,5
			space_loopDown:
				mov word[es:di],dx
				add di,2
			loop space_loopDown
			pop cx
			add di,150
		loop space_loopStr

	popa
	w9:
	 cmp al,0x66
	jne game_loop
	
	jmp fullScreen
	
                               ;undo functionality
							   
	undo_key:

	pusha
	cmp word[undo_count],0
	je exit_undoo
	mov bx,[undo_count]
	sub bx,2
	mov si,[stack3+bx]
	mov ax,[stack1+bx]
	mov di,[stack2+bx]
	cmp al,0x2d
	je havei
	havee:
    sub al,0x30
	mov ah,0x77
    mov [showNum+si],al
	add al,0x30 
	
	mov [es:di],ax
	mov word[undo_count],bx
	cmp word[stack5+bx],0
	je no_decrease
	cmp word[score_game],20
	jl nop
	sub word[score_game],20
	jmp  	exit_undoo
	nop:
	mov word[score_game],0
	
	exit_undoo:
	popa
	jmp game_loop
havei:
 mov al,0x20
 jmp havee

no_decrease:
jmp exit_undoo



clear_score:
pusha
mov ax,0xb800
mov es,ax
mov di,1426
mov cx,8
mov ax,0x7320
loop_clear:
mov word[es:di],ax
add di,2
loop loop_clear
popa

ret

printnum:

 push bp
 mov bp, sp
 push es
 push ax
 push bx
 push cx
 push dx
 push di
 mov ax, 0xb800
 mov es, ax
 mov ax, [bp+6]
 mov bx, 10
 mov cx, 0
nextdigit:
 mov dx, 0
 div bx
 add dl, 0x30
 push dx
 inc cx
 cmp ax, 0
 jnz nextdigit
 mov di, [bp+4]
nextpos:
 pop dx
 mov dh, 0x74
 mov [es:di], dx
 add di, 2
 loop nextpos
 pop di
 pop dx
 pop cx
 pop bx
 pop ax
 pop es
 pop bp
 ret 4

validation_rows:
    pusha
    push cs
    pop ds
    push cs
    pop es
    mov cx, 9
    mov dx, 9
    mov bx, 0
    mov si, showNum
    mov di, boardNum
    mov byte [valid_rows], 0

check_1:
    mov al, [si]
    cmp al, [di]
    jne no_success
    add di, 1
    add si, 1
    loop check_1

    add byte [valid_rows], 1


no_success:
    xor ax, ax
    mov ax, bx
    mul dl
    add ax, dx
    mov si, showNum
    mov di, boardNum
    add si, ax
    add di, ax
    mov cx, dx       
    inc bx
    cmp bx, 9
    jne check_1

	mov ax,[valid_rows]
	cmp al,[DaRows]
	jbe goforth
	mov [DaRows],al
	call DaShape
	goforth:

  popa
  ret
  tone:
    pusha               
    MOV BX, AX
    MOV AL, 0     
    OUT 43h, AL
    MOV AX, BX         
    OUT 42h, AL         
    MOV AL, AH        
    OUT 42h, AL         
    IN AL, 61h          
    OR AL, 03h         
    OUT 61h, AL         
    MOV AH, 86h       
	mov cx,10
	mov dx,0
    INT 15h            
    IN AL, 61h          
    AND AL, 0FCh        
    OUT 61h, AL        
    popa                
    ret    
 DaShape:
	pusha
	
	mov ax,0xb800
	mov es,ax
	
	mov di,116
	mov ah,0x03
	mov al,'\'
	mov dh,0x03
	mov dl,'/'
	mov cx,12
shape1:
	mov [es:di],ax
	call delayit
	mov [es:di+160],dx
	add di,320
	loop shape1
	call tone
	
	mov cx,25
shape2:
	call delayit
	mov word[es:di],0x7020
	mov word[es:di-160],0x7020
	sub di,320
	loop shape2
	
	popa
	ret

 validation_column:
 pusha
 
  push cs
    pop ds
    push cs
    pop es
    mov cx, 9
    mov dx, 9
    mov bx, 0
    mov si, showNum
    mov di, boardNum
    mov byte [valid_coloum], 0

check_11:
    mov al, [si]
    cmp al, [di]
    jne no_successs
    add di, 9
    add si, 9
    loop check_11

    add byte [valid_coloum], 1
	
no_successs:
    xor ax, ax
    mov ax, bx
    add ax,1 
    mov si, showNum
    mov di, boardNum
    add si, ax
    add di, ax
    mov cx, dx       
    inc bx
    cmp bx, 9
    jne check_11

	mov ax,[valid_coloum]
	cmp al,[DaCols]
	jbe goforth1
	mov [DaCols],al
	call DaShape
	goforth1:
	
 popa
 ret
 
 
  printRectangle21:	
 
push bp
mov bp,sp
pusha

		mov ax, 0xb800
		mov es, ax 		; point es to video base

		mov al, 80 		; load al with columns per row
		mov dl, 4
		mul dl 	        ; multiply with row number
		add ax, 20	    ; add col
		shl ax, 1 		; turn into byte offset
		mov di, ax 		; point di to required location
		mov ah, 0x60		   ; load attribute in ah
		mov cx, 36
		;sub cx, 10

topLine11:	

mov al, 0x20 		; ASCII of '-'
		mov [es:di], ax 	; show this char on screen
		add di, 2 		; move to next screen location 
	
		loop topLine11		; repeat the operation cx times

		mov cx, 11
		;sub cx, 2
		;add di, 160

rightLine11:	mov al, 0x20 		; ASCII of '|'
		mov [es:di], ax 	; show this char on screen
		add di, 160 		; move to next screen location 		
		
		loop rightLine11		; repeat the operation cx times
		
		mov cx, 36
		;sub cx, 10

bottomLine11:
	mov al, 0x20 		; ASCII of '-'
		mov [es:di], ax 	; show this char on screen
		sub di, 2 		; move to next screen location 
		;
		loop bottomLine11	; repeat the operation cx times

		mov cx, 11
		;sub cx, 2

leftLine11:	mov al, 0x20 		; ASCII of '|'
		mov [es:di], ax 	; show this char on screen
		sub di, 160 		; move to next screen location 		
		
		loop leftLine11		; repeat the operation cx times

		popa
		pop bp
		ret
		
		
  printRectangle2:	
 
push bp
mov bp,sp
pusha

		mov ax, 0xb800
		mov es, ax 		; point es to video base

		mov al, 80 		; load al with columns per row
		mov dl, 1
		mul dl 	        ; multiply with row number
		add ax, 1 	    ; add col
		shl ax, 1 		; turn into byte offset
		mov di, ax 		; point di to required location
		mov ah, 0x00 		   ; load attribute in ah
		mov cx, 76
		;sub cx, 10

topLine1:	

mov al, 0x2D 		; ASCII of '-'
		mov [es:di], ax 	; show this char on screen
		add di, 2 		; move to next screen location 
	
		loop topLine1		; repeat the operation cx times

		mov cx, 22
		;sub cx, 2
		;add di, 160

rightLine1:	mov al, 0x7c 		; ASCII of '|'
		mov [es:di], ax 	; show this char on screen
		add di, 160 		; move to next screen location 		
		
		loop rightLine1		; repeat the operation cx times
		
		mov cx, 76
		;sub cx, 10

bottomLine1:
	mov al, 0x2D 		; ASCII of '-'
		mov [es:di], ax 	; show this char on screen
		sub di, 2 		; move to next screen location 
		;
		loop bottomLine1	; repeat the operation cx times

		mov cx, 22
		;sub cx, 2

leftLine1:	mov al, 0x7c 		; ASCII of '|'
		mov [es:di], ax 	; show this char on screen
		sub di, 160 		; move to next screen location 		
		
		loop leftLine1		; repeat the operation cx times

		popa
		pop bp
		ret
		
 printRectangle:	
 
push bp
mov bp,sp
pusha

		mov ax, 0xb800
		mov es, ax 		; point es to video base

		mov al, 80 		; load al with columns per row
		mov dl, 1
		mul dl 	        ; multiply with row number
		add ax, 1 	    ; add col
		shl ax, 1 		; turn into byte offset
		mov di, ax 		; point di to required location
		mov ah, 0x00 		   ; load attribute in ah
		mov cx, 76
		;sub cx, 10

topLine:	

mov al, 0x2D 		; ASCII of '-'
		mov [es:di], ax 	; show this char on screen
		add di, 2 		; move to next screen location 
		call sleep;
		loop topLine		; repeat the operation cx times

		mov cx, 22
		;sub cx, 2
		;add di, 160

rightLine:	mov al, 0x7c 		; ASCII of '|'
		mov [es:di], ax 	; show this char on screen
		add di, 160 		; move to next screen location 		
		call sleep;
		loop rightLine		; repeat the operation cx times
		
		mov cx, 76
		;sub cx, 10

bottomLine:
	mov al, 0x2D 		; ASCII of '-'
		mov [es:di], ax 	; show this char on screen
		sub di, 2 		; move to next screen location 
		call sleep;
		loop bottomLine		; repeat the operation cx times

		mov cx, 22
		;sub cx, 2

leftLine:	mov al, 0x7c 		; ASCII of '|'
		mov [es:di], ax 	; show this char on screen
		sub di, 160 		; move to next screen location 		
		call sleep;
		loop leftLine		; repeat the operation cx times

		popa
		pop bp
		ret
;---------------------------------------------------------------------------

   sleep:
   pusha
    mov cx, 0
    mov bx, 3
    
outer_loop1:
    push bx
    mov ax, 0xfFf
inner_loop1:
    dec ax
    jnz inner_loop1
    pop bx
    dec bx
    jnz outer_loop1

popa
    ret





WriteString:
push bp
mov bp,sp
    MOV AX, 0xB800
    MOV ES, AX
  mov di,[bp+4]
    MOV SI, time_display
    MOV CX, 5

	
WriteLoop:
    LODSB
    MOV [ES:DI], al
    INC DI
    MOV AL, 0x74
    MOV [ES:DI], Al
    INC DI
    LOOP WriteLoop
		pop bp

    RET 2

ConvertToDisplay:

    MOV AL, [time_minutes]
    AAM
    ADD AX, 3030h
    MOV [time_display + 1], AL
    MOV [time_display], AH
    MOV AL, [time_seconds]
    AAM
    ADD AX, 3030h
    MOV [time_display + 4], AL
    MOV [time_display + 3], AH
	
    RET

restore_interrupt:
   
    MOV AX, 0
    MOV ES, AX
    MOV BX, [oldtimerisr]
    MOV [ES:8*4], BX
    MOV BX, [oldtimerisr+2]
    MOV [ES:8*4 + 2], BX


call speakerOff

    RET



                                                           ; undo button
	   
	
   
		
		
winScreen:

xor di,di
mov cx,2000
restore_main2:
	mov word[saveJagah1+di],0
	add di,2
	loop restore_main2

xor di,di
mov cx,2000
restore_other:
	mov word[saveJagah2+di],0
	add di,2
	loop restore_other


call restore_interrupt

winScreen1:
call clear3

  call printRectangle2
  		 ; mov ax,0  ; rows
	 ; push ax
	 ; mov ax,0    ;cols
	 ; push ax
	 ; mov ax,80   ;lenght
	 ; push ax
	  ; mov ax,3    ;width
	 ; push ax
    ; call print_rect
	
   ; mov ax,24 ; rows
	 ; push ax
	 ; mov ax,0    ;cols
	 ; push ax
	 ; mov ax,80   ;lenght
	 ; push ax
	  ; mov ax,4   ;width
	 ; push ax
    ; call print_rect
	
	
	
	 ; mov ax,0 ; rows
	 ; push ax
	 ; mov ax,0    ;cols
	 ; push ax
	 ; mov ax,80   ;lenght
	 ; push ax
	  ; mov ax,4    ;width
	 ; push ax
    ; call print_rect2
	
	 ; mov ax,0 ; rows
	 ; push ax
	 ; mov ax,76   ;cols
	 ; push ax
	 ; mov ax,80   ;width
	 ; push ax
	  ; mov ax,4    ;len
	 ; push ax
    ; call print_rect2
	
   mov ax,19
    push AX
    mov ax,17
    push AX
	call box
	
	 mov ax,44
    push AX
    mov ax,17
    push AX
	call box
	
   call printRectangle21
	
	                          ;win msg 
							 
	cmp word[status_count],0
	je go_lose
 mov ax, You_Win
 push ax	 
 jmp print_status
	go_lose:
 mov ax, You_lose
 push ax
	
   print_status:
    push word [length5]
    mov ax,80
    mov cx,5
    mul cx
    add ax,34
    shl ax,1
    push ax
    push word [move]
    mov ax,0x6f
    push ax
    call printing
	                        ; timer result screen
    mov ax, timer
    push ax
    push word [timer_len]
    mov ax,80
    mov cx,8
    mul cx
    add ax,30
    shl ax,1
    push ax
    push word [move]
    mov ax,0x07
    push ax

    call printing
	
 CALL ConvertToDisplay

	push di
	push ax
	
	  MOV AX, 80
    MOV BX, 8
    MUL BX
    ADD AX, 38
    MOV DI, AX
    SHL DI, 1
	push di
	
	
    CALL WriteString
	pop ax
	pop di
	
	
	
	xor ax,ax
mov word[time_counter],  ax
mov  byte[time_seconds], al
mov  byte[time_minutes], al
	                           ; score result screen
    mov ax, score
    push ax
    push word [score_len]
    mov ax,80
    mov cx,10
    mul cx
    add ax,30
    shl ax,1
    push ax
    push word [move]
    mov ax,0x07
    push ax
    call printing
	
    mov ax,[score_game]
	push ax
	mov ax,1688
	push ax
	call printnum
	mov word[score_game],0
	
                              ; mistake result screen 
							  
	 mov ax, message7
    push ax
    push word [length7]
    mov ax,80
    mov cx,12
    mul cx
    add ax,30
    shl ax,1
    push ax
    push word [move]
    mov ax,0x07
    push ax
    call printing
	
	pusha
	mov ax,0xb800
	mov es,ax
    mov ax,80
    mov cx,12
    mul cx
    add ax,40
    shl ax,1
    mov di,ax
    pop cx
    push di
    mov ax,[mistake]
    mov ah,0x74
    add al,'0'
    mov [es:di],ax
	popa
	
                            ; boxes 
    mov ax, message6
    push ax
    push word [length6]
    push word [location+20]
    push word [move]
		mov ax,0x07
	push ax
    call printing
    mov ax, message4
    push ax
    push word [length4]
    push word [location+22]
    push word [move]
	mov ax,0x07
	push ax
    call printing

    mov word[mode_curr],0
	going:
    mov ah, 00h
    int 16h
    cmp ah, 4Bh
    je keyleft
    cmp ah, 4Dh
    je keyright
    jmp going
    
undo_key3:

	pusha
	

	
	cmp word[undo_count],0
	je exit_undoo1
	mov bx,[undo_count]
	sub bx,2
	mov si,[stack3+bx]
	mov ax,[stack1+bx]
	mov di,[stack2+bx]
	cmp al,0x2d
	je havei1
	havee1:
    sub al,0x30
	mov ah,0x77
    mov [showNum+si],al
	add al,0x30 
	
	mov [es:di],ax
	mov word[undo_count],bx
	cmp word[stack5+bx],0
	je no_decrease1
	sub word[score_game],20
	exit_undoo1:
	popa
	jmp fullgame_loop
havei1:
 mov al,0x20
 jmp havee1

no_decrease1:
jmp exit_undoo1

  checkkey:

    mov ah, 00h
    int 16h
    cmp ah, 4Bh
    je keyleft
    cmp ah, 4Dh
    je keyright
    jmp main

keyleft:

  mov ax, message6

    push ax
    push word [length6]
    push word [location+20]
    push word [move]
		mov ax,0x8f
	push ax
    call printing


    ; mov ah, 01h
    ; int 16h
    ; jz keyleft
    mov ah, 00h
    int 16h
    cmp ah, 1Ch
    jne winScreen1
    jmp mode_select

keyright:

    mov ax, message4
    push ax
    push word [length4]
    push word [location+22]
    push word [move]
	mov ax,0x8f
	push ax
    call printing
	
    ; mov ah, 01h
    ; int 16h
    ; jz keyright
    mov ah, 00h
    int 16h
    cmp ah, 1Ch
    jne winScreen1
    jmp show_end

                         ;mode check 
							 
							 ;easy
	
easy_check:
	
	mov byte[mode_helper],8
    mov word[attribute],0x8f;
	call easy_print
	mov word[attribute],0x07;
	call medium_print
	call hard_print
	jmp mode_end
	

                 ;Medium
				 
	med_check:
	
	mov byte[mode_helper],5
    mov word[attribute],0x8f;
	call medium_print
	mov word[attribute],0x07;
	call easy_print
	call hard_print
	jmp mode_end

	
	                         ;hard
	hard_check:
	mov byte[mode_helper],3
	mov word[attribute],0x8f;;
	call hard_print
	mov word[attribute],0x07;
	call easy_print
	call  medium_print
	jmp mode_end
	
	                  ; main mood check
	
	mode_check:

	 push ax
	 mov ax,[mode_curr]
	 cmp ax,0
	 je easy_check
	 cmp ax,1
	 je med_check
	 jmp hard_check
	 
	 mode_end:
	 
	 pop ax 
	 ret
	 
	 
	 go_p:
	 call play_tips
	 jmp main1
	 
	
	                                           ;keys
											   
											   
						
  check_key:
  
 
    xor ax,ax      
    int 16h
    cmp ah, 4Bh         
    je wait_key_left
    cmp ah, 4Dh          
    je wait_key_right
    cmp al, 72h          
    je go_p             

    jmp main1            

wait_key_left:

  mov ax, message3
    push ax
    push word [length4]
    push word [location+20]
    push word [move]
		mov ax,0x8f
	push ax
    call printing


    xor ax,ax
    int 16h

    cmp ah, 1Ch
    je mode_select
    jmp main1

wait_key_right:

    mov ax, message4
    push ax
    push word [length4]
    push word [location+22]
    push word [move]
	mov ax,0x8f
	push ax
    call printing
	
xor ax,ax
    int 16h
    cmp ah, 1Ch
    je show_end
    jmp main1
    	                      ; mode keys
						  
show_start:


  call main2

  
      ; Wait for any key to return to main
	  mode_select:
	  
	  call clear3
	  call printRectangle2
	   ; mov ax,0  ; rows
	 ; push ax
	 ; mov ax,0    ;cols
	 ; push ax
	 ; mov ax,80   ;lenght
	 ; push ax
	  ; mov ax,3    ;width
	 ; push ax
    ; call print_rect
	
   ; mov ax,24 ; rows
	 ; push ax
	 ; mov ax,0    ;cols
	 ; push ax
	 ; mov ax,80   ;lenght
	 ; push ax
	  ; mov ax,4   ;width
	 ; push ax
    ; call print_rect
	
	
	
	 ; mov ax,0 ; rows
	 ; push ax
	 ; mov ax,0    ;cols
	 ; push ax
	 ; mov ax,80   ;lenght
	 ; push ax
	  ; mov ax,4    ;width
	 ; push ax
    ; call print_rect2
	
	 ; mov ax,0 ; rows
	 ; push ax
	 ; mov ax,76   ;cols
	 ; push ax
	 ; mov ax,80   ;width
	 ; push ax
	  ; mov ax,4    ;len
	 ; push ax
    ; call print_rect2
	
	 mov ax,30
    push AX
    mov ax,5
    push AX
	call box
	
		 mov ax,30
    push AX
    mov ax,11
    push AX
		call box
	
		 mov ax,30
    push AX
    mov ax,17
    push AX

	call box
	  
	call easy_print
		 
	call medium_print
		
	call hard_print
	
	
	
	call key_mode


	  
	  
	  call show_start

                             ;end screen
							 
  show_end:


   call clear3
  CALL printRectangle2
  
    mov ax,20
    push AX
    mov ax,8
    push AX
	call box2
	
    mov ax, msg_end
    push ax
    push word [len_end]
    mov ax,80
    mov cx,11
    mul cx
    add ax,23
    shl ax,1
    push ax
    push word [move]
	mov ax,0x0f
	push ax
    call printing
	
	 mov ax, msg_end2
    push ax
    push word [len_end+2]
    mov ax,80
    mov cx,14
    mul cx
    add ax,28
    shl ax,1
    push ax
    push word [move]
	mov ax,0x0f
	
	push ax
    call printing
	
	push word 3
	push word 6
	call Bat
	
	push word 3
	push word 66
	call Bat
	
		push word 18
	push word 6
	call Bat
	
	push word 18
	push word 66
	call Bat
	
	
	
	terminate:
    mov ax, 0x4c00
    int 0x21           ; Exit the program
		  
  key_mode:
  
  	call mode_check
	
    xor ax,ax
    int 16h
    cmp ah, 0x48
    je arrow_up
    cmp ah,0x50
    je arrow_down
	cmp ah, 1Ch
    je show_start
    jmp key_mode
	
                                     ;arrow down
									 
									 
arrow_down:

    mov ax, [mode_curr]
    inc ax
    cmp ax, 3
    jl valid_down
    mov ax, 0
valid_down:
    mov [mode_curr], ax
    call mode_check
    xor ax,ax
 
    jmp key_mode

arrow_up:
   
    mov ax, [mode_curr]
    dec ax
    cmp ax, -1
    jg valid_up
    mov ax, 2
    valid_up:
    mov [mode_curr], ax
    call mode_check
  xor ax,ax

    jmp key_mode
	                      ;        modes printing
						  
    easy_print:
	

	
    mov ax, easy_m
    push ax
    push word [m_len1]
   	mov ax,80
	mov cx,6
	mul cx
	add ax,35
	shl ax,1
    push ax
    push word [move]
	mov ax,[attribute]
	push ax
    call printing
	

	ret
	
	 medium_print:
	 
	mov ax, med_m
    push ax
    push word [m_len2]
   	mov ax,80
	mov cx,12
	mul cx
	add ax,34
	shl ax,1
    push ax
    push word [move]
	mov ax,[attribute]
	push ax
    call printing
	ret
	
    hard_print:
  
	mov ax, hard_m
    push ax
    push word [m_len1]
   	mov ax,80
	mov cx,18
	mul cx
	add ax,35
	shl ax,1
    push ax
    push word [move]
	mov ax,[attribute]
	push ax
    call printing
	ret
	
	
	
	play_tips:
	
		pusha
	
	 call clear2
	
     call printRectangle2
	 ; mov ax,0  ; rows
	 ; push ax
	 ; mov ax,0    ;cols
	 ; push ax
	 ; mov ax,80   ;lenght
	 ; push ax
	  ; mov ax,3    ;width
	 ; push ax
    ; call print_rect
	
   ; mov ax,24 ; rows
	 ; push ax
	 ; mov ax,0    ;cols
	 ; push ax
	 ; mov ax,80   ;lenght
	 ; push ax
	  ; mov ax,4   ;width
	 ; push ax
    ; call print_rect
	
	
	
	 ; mov ax,0 ; rows
	 ; push ax
	 ; mov ax,0    ;cols
	 ; push ax
	 ; mov ax,80   ;lenght
	 ; push ax
	  ; mov ax,4    ;width
	 ; push ax
    ; call print_rect2
	
	 ; mov ax,0 ; rows
	 ; push ax
	 ; mov ax,76   ;cols
	 ; push ax
	 ; mov ax,80   ;width
	 ; push ax
	  ; mov ax,4    ;len
	 ; push ax
    ; call print_rect2
	
   
     mov ax,34
    push AX
    mov ax,3
    push AX
	call box
	
    mov ax, rule
    push ax
    push word 6
    mov ax,80
    mov cx,4
    mul cx
    add ax,38
    shl ax,1
    push ax
    push word [move]
    mov ax,0x0f
    push ax
    call printing
	
	 push ds
	 mov ax,rule1
	 push ax
	 call strlen
	 
	mov bx,ax
	mov ax,7
	push ax
	mov ax, 6
	push ax
	mov ax,bx
	push ax
	mov ax,rule1
	push ax
	mov ax,0
	push ax
    call loading
	 
	 push ds
	 mov ax,rule01
	 push ax
	 call strlen
	 
	mov bx,ax
	mov ax,8
	push ax
	mov ax, 6
	push ax
	mov ax,bx
	push ax
	mov ax,rule01
	push ax
	mov ax,0
	push ax
    call loading

		 
	push ds
	 mov ax,rule2
	 push ax
	 call strlen
	 
	mov bx,ax
	mov ax,9
	push ax
	mov ax, 6
	push ax
	mov ax,bx
	push ax
	mov ax,rule2
	push ax
	mov ax,0
	push ax
    call loading
	
	
	push ds
	 mov ax,rule02
	 push ax
	 call strlen
	 
	mov bx,ax
	mov ax,10
	push ax
	mov ax, 6
	push ax
	mov ax,bx
	push ax
	mov ax,rule02
	push ax
	mov ax,0
	push ax
    call loading
	
	push ds
	 mov ax,rule3
	 push ax
	 call strlen
	 
	mov bx,ax
	mov ax,11
	push ax
	mov ax, 6
	push ax
	mov ax,bx
	push ax
	mov ax,rule3
	push ax
	mov ax,0
	push ax
    call loading
	
	 mov ax, e
    push ax
    push word 11
    mov ax,80
    mov cx,12
    mul cx
    add ax,6
    shl ax,1
    push ax
    push word [move]
    mov ax,0x07
    push ax
    call printing
	
	push ds
	 mov ax,rule4
	 push ax
	 call strlen
	 
	mov bx,ax
	mov ax,13
	push ax
	mov ax, 6
	push ax
	mov ax,bx
	push ax
	mov ax,rule4
	push ax
	mov ax,0
	push ax
    call loading
	
		 mov ax, m
    push ax
    push word 11
    mov ax,80
    mov cx,14
    mul cx
    add ax,6
    shl ax,1
    push ax
    push word [move]
    mov ax,0x07
    push ax
    call printing
	
	push ds
	 mov ax,rule5
	 push ax
	 call strlen
	 
	mov bx,ax
	mov ax,15
	push ax
	mov ax, 6
	push ax
	mov ax,bx
	push ax
	mov ax,rule5
	push ax
	mov ax,0
	push ax
    call loading
	
		 mov ax, h
    push ax
    push word 11
    mov ax,80
    mov cx,16
    mul cx
    add ax,6
    shl ax,1
    push ax
    push word [move]
    mov ax,0x07
    push ax
    call printing
	
	push ds
	 mov ax,rule6
	 push ax
	 call strlen
	 
	mov bx,ax
	mov ax,17
	push ax
	mov ax, 6
	push ax
	mov ax,bx
	push ax
	mov ax,rule6
	push ax
	mov ax,0
	push ax
    call loading
	
	push ds
	 mov ax,rule7
	 push ax
	 call strlen
	 
	mov bx,ax
	mov ax,19
	push ax
	mov ax, 6
	push ax
	mov ax,bx
	push ax
	mov ax,rule7
	push ax
	mov ax,0
	push ax
    call loading
	
  mov ax, press_e
    push ax
    push word 22
    mov ax,80
    mov cx,23
    mul cx
    add ax,52
    shl ax,1
    push ax
    push word [move]
    mov ax,0x0f
    push ax
    call printing
	
	xor ax,ax
	mov es,ax
	mov bx,[es:9*4]
	mov word[kbisr_store],bx
	mov bx,[es:9*4+2]
	mov word[kbisr_store+2],bx
	
	cli
	mov word[es:9*4+2],CS
	mov word[es:9*4],kbisr
	sti
	
	infinite:
	cmp word[press_enter],1
	je restore_kbisr
	jmp infinite
	
	restore_kbisr:
	cli
	mov bx,[kbisr_store]
	mov [es:9*4],bx
	mov bx,[kbisr_store+2]
	mov [es:9*4+2],bx
	sti   
	
popa

ret
	
	   ;   horizontal  forward
	    
	 sleep2:
   pusha
    mov cx, 0
    mov bx, 5
    
outer_loop3:
    push bx
    mov ax, 0xfFf
inner_loop3:
    dec ax
    jnz inner_loop3
    pop bx
    dec bx
    jnz outer_loop3

popa
    ret
		
	print_rect:
	push bp
	mov bp,sp
	pusha

	mov ax,0xb800
	mov es,ax
	mov ax,0x5720
	
	mov bx,[bp+10]
	mov dx,[bp+8]
	
 mov si,[bp+4]
	cal:
	
	mov ax,80
	mul  bl
	add ax,dx
	shl ax,1
	mov di,ax
	mov cx,[bp+6]
	mov ax,0x0720
	
	rect_l1:
	mov [es:di],ax
	call sleep2
	add di,2
	loop rect_l1
	inc bx
	inc si
	cmp si,[bp+4]
	jl cal
	popa
	pop bp
	ret 8
	
							 print_rect23:
	push bp
	mov bp,sp
	pusha

	mov ax,0xb800
	mov es,ax
	mov ax,0x0720
	
	mov bx,[bp+10]
	mov dx,[bp+8]
	
    mov si,0
	cal23:
	
	mov ax,80
	mul  bl
	add ax,dx
	shl ax,1
	mov di,ax
	mov cx,[bp+4]
	mov ax,[bp+12]
	mov ah,al
	mov al,0x20

	
	rect_l23:

	mov [es:di],ax
	add di,2
	loop rect_l23
	inc bx
	inc si
	cmp si,[bp+6]
	jle cal23
	popa
	pop bp
	ret 10
	
		                     ; vertical downword of main game
						 print_rect21:
	push bp
	mov bp,sp
	pusha

	mov ax,0xb800
	mov es,ax
	mov ax,0x0720
	
	mov bx,[bp+10]
	mov dx,[bp+8]
	
    mov si,0
	cal21:
	
	mov ax,80
	mul  bl
	add ax,dx
	shl ax,1
	mov di,ax
	mov cx,[bp+4]
	mov ax,[bp+12]
	mov ah,al
	mov al,0x20

	
	rect_l21:
	call sleep2
	mov [es:di],ax
	add di,2
	loop rect_l21
	inc bx
	inc si
	cmp si,[bp+6]
	jle cal21
	popa
	pop bp
	ret 10

	
	        ;vertival downward


	print_rect2:
	push bp
	mov bp,sp
	pusha

	mov ax,0xb800
	mov es,ax
	mov ax,0x0720
	
	mov bx,[bp+10]
	mov dx,[bp+8]
	
    mov si,0
	cal2:
	
	mov ax,80
	mul  bl
	add ax,dx
	shl ax,1
	mov di,ax
	mov cx,[bp+4]
	mov ax,0x0720
	
	rect_l2:
	call sleep2
	mov [es:di],ax
	add di,2
	loop rect_l2
	inc bx
	inc si
	cmp si,[bp+6]
	jle cal2
	popa
	pop bp
	ret 8
	
	                     ; diagonal forward
				
				
   print_rect3:
	push bp
	mov bp,sp
	pusha

	mov ax,0xb800
	mov es,ax
	mov ax,0x0720
	
	mov bx,[bp+10]
	mov dx,[bp+8]
	
    mov si,0
	cal3:
	
	mov ax,80
	mul  bl
	add ax,dx
	shl ax,1
	mov di,ax
	mov cx,[bp+4]
	mov ax,0x0720
	
	rect_l3:
	call sleep2
	mov [es:di],ax
	add di,162
	loop rect_l3
	inc dx
	inc si
	cmp si,[bp+6]
	jle cal3
	popa
	pop bp
	ret 8
	
	
	                             ;diagonal backword
						 
  print_rect4:
  
	push bp
	mov bp,sp
	pusha

	mov ax,0xb800
	mov es,ax
	mov ax,0x0720
	
	mov bx,[bp+10]
	mov dx,[bp+8]
	
    mov si,0
	cal4:
	
	mov ax,80
	mul  bl
	add ax,dx
	shl ax,1
	mov di,ax
	mov cx,[bp+4]
	mov ax,0x0720
	
	rect_l4:
	call sleep2
	mov [es:di],ax
	add di,158
	loop rect_l4
	inc dx
	inc si
	cmp si,[bp+6]
	jle cal4
	popa
	pop bp
	ret 8
						 
	
	
                     ;delay
					 
					 

   delay:
   pusha
    mov cx, 0
    mov bx, 70
    
outer_loop:
    push bx
    mov ax, 0xfFf
inner_loop:
    dec ax
    jnz inner_loop
    pop bx
    dec bx
    jnz outer_loop

popa
    ret
	
	   delay2:
   pusha
    mov cx, 0
    mov bx,20
    
outer_loop2:
    push bx
    mov ax, 0xfFf
inner_loop2:
    dec ax
    jnz inner_loop2
    pop bx
    dec bx
    jnz outer_loop2

popa

    ret
	
	                            ;loading
  
	loading:
	
	push bp
	mov bp,sp
	pusha
	
	mov cx,[bp+12]
	mov ax,80
	mul  cx
	add ax,[bp+10]
	shl ax,1
	mov dx,ax
	
	mov ax,0xb800
	mov es,ax
	mov bx,0

	load0:
	mov di,dx
	mov si,[bp+6]
	mov cx,[bp+8]
	
	load1:
	mov ah,0x74
	mov al,[si]
	mov [es:di],ax
	
	call sleep2
	add si,1
	add di,2
	loop load1
	cmp bx,[bp+4]
	jge ter
	mov di,dx
	mov cx,10
	load3:
	mov ax,0x7420
	mov [es:di],ax
	add di,2
	loop load3
	add bx,1
	cmp bx,[bp+4]
	jl load0
	ter:
	popa
	pop bp
	
	ret 10
	
	loading2:
	
	push bp
	mov bp,sp
	pusha
	
	mov cx,[bp+12]
	mov ax,80
	mul  cx
	add ax,[bp+10]
	shl ax,1
	mov dx,ax
	
	mov ax,0xb800
	mov es,ax
	mov bx,0

	load00:
	mov di,dx
	mov si,[bp+6]
	mov cx,[bp+8]
	
	load11:
	mov ah,0x0f
	mov al,[si]
	mov [es:di],ax
	
	call delay2
	add si,1
	add di,2
	loop load11
	cmp bx,[bp+4]
	jge teri
	mov di,dx
	mov cx,10
	load33:
	mov ax,0x0f20
	mov [es:di],ax
	add di,2
	loop load33
	add bx,1
	cmp bx,[bp+4]
	jl load00
	teri:
	popa
	pop bp
	
	ret 10
	
	
	
	
 
                            ;starting screen
							
							;  main0
	
	main0:
	
    call clear2
     
	 ; mov ax,0  ; rows
	 ; push ax
	 ; mov ax,0    ;cols
	 ; push ax
	 ; mov ax,80   ;lenght
	 ; push ax
	  ; mov ax,3    ;width
	 ; push ax
    ; call print_rect
	
   ; mov ax,24 ; rows
	 ; push ax
	 ; mov ax,0    ;cols
	 ; push ax
	 ; mov ax,80   ;lenght
	 ; push ax
	  ; mov ax,4   ;width
	 ; push ax
    ; call print_rect
	
	
	
	 ; mov ax,0 ; rows
	 ; push ax
	 ; mov ax,0    ;cols
	 ; push ax
	 ; mov ax,80   ;lenght
	 ; push ax
	  ; mov ax,4    ;width
	 ; push ax
    ; call print_rect2
	
	 ; mov ax,0 ; rows
	 ; push ax
	 ; mov ax,76   ;cols
	 ; push ax
	 ; mov ax,80   ;width
	 ; push ax
	  ; mov ax,4    ;len
	 ; push ax
    ; call print_rect2
	
	
	 mov ax,6  ; rows
	 push ax
	 mov ax,30  ;cols
	 push ax
	 mov ax,40  ;lenght
	 push ax
	  mov ax,0   ;width
	 push ax
    call print_rect
	
	 mov ax,16  ; rows
	 push ax
	 mov ax,10  ;cols
	 push ax
	 mov ax,60   ;lenght
	 push ax
	  mov ax,0   ;width
	 push ax
    call print_rect
	
	call printRectangle
	mov ax, wel
    push ax
    push word [wel_len]
    mov ax,80
    mov cx,6
    mul cx
    add ax,14
    shl ax,1
    push ax
    push word [move]
    mov ax,0x0f
    push ax
    call printing
	
	call delay
		 ; s printing
		 
	mov ax,8  ; rows
	 push ax
	 mov ax,14  ;cols
	 push ax
	 mov ax,7   ;lenght
	 push ax
	  mov ax,0   ;width
	 push ax
    call print_rect
	
	 mov ax,8 ; rows
	 push ax
	 mov ax,14   ;cols
	 push ax
	 mov ax,3   ;width
	 push ax
	  mov ax,1    ;len
	 push ax
    call print_rect2
	
	 mov ax,11 ; rows
	 push ax
	 mov ax,14  ;cols
	 push ax
	 mov ax,7   ;lenght
	 push ax
	  mov ax,0   ;width
	 push ax
    call print_rect
	
	 mov ax,11 ; rows
	 push ax
	 mov ax,20   ;cols
	 push ax
	 mov ax,3   ;width
	 push ax
	  mov ax,1    ;len
	 push ax
    call print_rect2
	
	 mov ax,14 ; rows
	 push ax
	 mov ax,14  ;cols
	 push ax
	 mov ax,7   ;lenght
	 push ax
	  mov ax,0   ;width
	 push ax
    call print_rect
	
		call delay
	                  ; U print
					  
     mov ax,8 ; rows
	 push ax
	 mov ax,23   ;cols
	 push ax
	 mov ax,6   ;width
	 push ax
	  mov ax,1    ;len
	 push ax
    call print_rect2
	
	 mov ax,14 ; rows
	 push ax
	 mov ax,23  ;cols
	 push ax
	 mov ax,6   ;lenght
	 push ax
	  mov ax,0   ;width
	 push ax
    call print_rect
	
	 mov ax,8 ; rows
	 push ax
	 mov ax,29   ;cols
	 push ax
	 mov ax,6   ;width
	 push ax
	  mov ax,1    ;len
	 push ax
    call print_rect2
	
		call delay
	                     ; D print
						 
	 mov ax,8 ; rows
	 push ax
	 mov ax,38  ;cols
	 push ax
	 mov ax,6   ;width
	 push ax
	  mov ax,1    ;len
	 push ax
    call print_rect2
	
	 mov ax,14 ; rows
	 push ax
	 mov ax,32  ;cols
	 push ax
	 mov ax,6  ;lenght
	 push ax
	  mov ax,0   ;width
	 push ax
    call print_rect
	
	 mov ax,11 ; rows
	 push ax
	 mov ax,32  ;cols
	 push ax
	 mov ax,6  ;lenght
	 push ax
	  mov ax,0   ;width
	 push ax
    call print_rect
	
	 mov ax,11 ; rows
	 push ax
	 mov ax,32  ;cols
	 push ax
	 mov ax,3   ;width
	 push ax
	  mov ax,1    ;len
	 push ax
    call print_rect2
		call delay
	
	                          ; O print
							  
	 mov ax,8 ; rows
	 push ax
	 mov ax,41  ;cols
	 push ax
	 mov ax,6   ;width
	 push ax
	  mov ax,1    ;len
	 push ax
    call print_rect2
	
	 mov ax,8 ; rows
	 push ax
	 mov ax,47  ;cols
	 push ax
	 mov ax,6   ;width
	 push ax
	  mov ax,1    ;len
	 push ax
    call print_rect2

	 mov ax,8 ; rows
	 push ax
	 mov ax,41  ;cols
	 push ax
	 mov ax,6  ;lenght
	 push ax
	  mov ax,0   ;width
	 push ax
    call print_rect
	
	 mov ax,14 ; rows
	 push ax
	 mov ax,41  ;cols
	 push ax
	 mov ax,6  ;lenght
	 push ax
	  mov ax,0   ;width
	 push ax
    call print_rect
					
	call delay
                   ; K print
				   
				   
	 mov ax,8 ; rows
	 push ax
	 mov ax,50  ;cols
	 push ax
	 mov ax,6   ;width
	 push ax
	  mov ax,1    ;len
	 push ax
    call print_rect2


   mov ax,10 ; rows
   push ax
   mov ax,50  ;cols
   push ax
   mov ax,0   ;width
   push ax
    mov ax,5     ;len
   push ax
    call print_rect3
	
	
   mov ax,8; rows
   push ax
   mov ax,55  ;cols
   push ax
   mov ax,0   ;width
   push ax
    mov ax,5     ;len
   push ax
    call print_rect4
	
		call delay
	                        ; 0 printing
							
	 mov ax,8 ; rows
	 push ax
	 mov ax,58      ;cols
	 push ax
	 mov ax,6   ;width
	 push ax
	  mov ax,1    ;len
	 push ax
    call print_rect2
	
	 mov ax,8 ; rows
	 push ax
	 mov ax,64  ;cols
	 push ax
	 mov ax,6   ;width
	 push ax
	  mov ax,1    ;len
	 push ax
    call print_rect2

	 mov ax,8 ; rows
	 push ax
	 mov ax,58  ;cols
	 push ax
	 mov ax,6  ;lenght
	 push ax
	  mov ax,0   ;width
	 push ax
    call print_rect
	
	 mov ax,14 ; rows
	 push ax
	 mov ax,58  ;cols
	 push ax
	 mov ax,6  ;lenght
	 push ax
	  mov ax,0   ;width
	 push ax
    call print_rect
	
	mov ax,21
	push ax
	mov ax, 64
	push ax
	mov ax,10
	push ax
	mov ax,load
	push ax
	mov ax,5
	push ax
    call loading2
					
	  ret	

 
  
		
  box:
  
  push bp
  mov bp,sp
  pusha

mov cx,[bp+4]
  
  mov ax,80
  mul cx
  add ax,[bp+6]
  shl ax,1
  
  mov di,AX
  mov ax,0xb800
  mov es,AX
  
  mov ax,0x0720
  
  mov cx,14
  mov bx,0
  mov dx,cx
  l3:
  mov word [es:di],ax
  add di,2
  loop l3
  add di,160
  shl dx,1
  sub di,DX
  shr dx,1
  inc BX
  mov cx,dx
  cmp bx,3
  jne l3
  
  popa
  pop bp
  ret 4
  
    box2:
  
  push bp
  mov bp,sp
  pusha

mov cx,[bp+4]
  
  mov ax,80
  mul cx
  add ax,[bp+6]
  shl ax,1
  
  mov di,AX
  mov ax,0xb800
  mov es,AX
  
  mov ax,0x0020
  
  mov cx,42
  mov bx,0
  mov dx,cx
  l32:
  mov word [es:di],ax
  add di,2
  loop l32
  add di,160
  shl dx,1
  sub di,DX
  shr dx,1
  inc BX
  mov cx,dx
  cmp bx,10
  jne l32
  
  popa
  pop bp
  ret 4
		
 
main:

call main0

main1:

    call clear3
		 ; mov ax,0  ; rows
	 ; push ax
	 ; mov ax,0    ;cols
	 ; push ax
	 ; mov ax,80   ;lenght
	 ; push ax
	  ; mov ax,3    ;width
	 ; push ax
    ; call print_rect
	
   ; mov ax,24 ; rows
	 ; push ax
	 ; mov ax,0    ;cols
	 ; push ax
	 ; mov ax,80   ;lenght
	 ; push ax
	  ; mov ax,4   ;width
	 ; push ax
    ; call print_rect
	
	
	
	 ; mov ax,0 ; rows
	 ; push ax
	 ; mov ax,0    ;cols
	 ; push ax
	 ; mov ax,80   ;lenght
	 ; push ax
	  ; mov ax,4    ;width
	 ; push ax
    ; call print_rect2
	
	 ; mov ax,0 ; rows
	 ; push ax
	 ; mov ax,76   ;cols
	 ; push ax
	 ; mov ax,80   ;width
	 ; push ax
	  ; mov ax,4    ;len
	 ; push ax
    ; call print_rect2
	
	call printRectangle2
	
   mov ax,18
    push AX
    mov ax,17
    push AX
	call box
	
	 mov ax,44
    push AX
    mov ax,17
    push AX
	call box
	
	
    mov ax, message1
    push ax
    push word [length1]
    mov ax,80
    mov cx,9
    mul cx
    add ax,19
    shl ax,1
    push ax
    push word [move]
	mov ax,0x07
	push ax
    call printing
    mov ax, message2
    push ax
    push word [length2]
    push word [location+2]
    push word [move]
		mov ax,0x07
	push ax
    call printing
  
  
    
  
    
   
    mov ax, message3
    push ax
    push word [length4]
    push word [location+20]
    push word [move]
		mov ax,0x07
	push ax
    call printing
    mov ax, message4
    push ax
    push word [length4]
    push word [location+22]
    push word [move]
	mov ax,0x07
	push ax
    call printing
	
   mov ax, rule_go
    push ax
    push word 27
    mov ax,80
    mov cx,23
    mul cx
    add ax,48
    shl ax,1
    push ax
    push word [move]
    mov ax,0x0f
    push ax
    call printing
	
    

	mov word[mode_curr],0
	
    call check_key      ; Wait for arrow/quit key

  
   					

   start:
      
    call main
    mov ax, 0x4c00
    int 0x21
	
board:

    db   3,8,4,1,5,9,6,2,7
    db   9,5,7,3,6,2,4,8,1
    db   1,6,2,7,4,8,9,5,3
    db   8,4,1,6,2,5,3,7,9
    db   2,3,6,8,9,7,1,4,5
    db   5,7,9,4,1,3,8,6,2
    db   6,1,3,5,7,4,2,9,8
    db   7,2,8,9,3,6,5,1,4
    db   4,9,5,2,8,1,7,3,6

    db   4,8,9,7,2,3,1,5,6
    db   2,3,1,5,9,6,7,4,8
    db   7,5,6,4,8,1,2,3,9
    db   6,7,2,8,4,9,3,1,5
    db   3,4,8,2,1,5,9,6,7
    db   1,9,5,3,6,7,8,2,4
    db   8,2,3,9,5,4,6,7,1
    db   5,6,7,1,3,8,4,9,2
    db   9,1,4,6,7,2,5,8,3

    db   6,2,9,7,5,4,1,8,3
    db   8,7,4,1,6,3,9,5,2
    db   3,1,5,2,8,9,7,6,4
    db   5,6,8,4,3,2,1,7,9
    db   7,9,1,5,4,8,3,2,6
    db   2,4,3,9,1,6,8,7,5
    db   1,5,6,3,2,7,4,9,8
    db   4,8,7,6,9,5,2,3,1
    db   9,3,2,8,7,1,6,4,5

    db   9,7,8,4,2,5,1,3,6
    db   1,4,5,9,6,3,2,7,8
    db   2,3,6,7,1,8,9,5,4
    db   7,5,4,6,3,2,8,1,9
    db   6,8,9,5,4,1,3,2,7
    db   3,1,2,8,9,7,4,6,5
    db   5,6,3,2,8,4,7,9,1
    db   4,2,7,1,5,9,6,8,3
    db   8,9,1,3,7,6,5,4,2

    db   4,8,7,3,5,9,6,2,1
    db   3,1,5,7,6,2,9,8,4
    db   6,2,9,8,1,4,5,7,3
    db   9,5,6,4,7,1,8,3,2
    db   2,4,3,6,8,5,1,9,7
    db   8,7,1,9,2,3,4,6,5
    db   5,9,2,1,3,6,7,4,8
    db   1,6,8,2,4,7,3,5,9
    db   7,3,4,5,9,8,2,1,6

    db   8,5,3,2,7,4,9,6,1
    db   6,4,1,3,8,9,7,5,2
    db   9,2,7,5,6,1,4,8,3
    db   3,7,8,1,5,6,2,4,9
    db   5,9,4,8,3,2,6,1,7
    db   2,1,6,4,9,7,5,3,8
    db   4,8,9,6,2,3,1,7,5
    db   1,3,2,7,4,5,8,9,6
    db   7,6,5,9,1,8,3,2,4

    db   6,9,7,8,5,3,1,4,2
    db   4,2,5,6,9,1,8,3,7
    db   8,1,3,4,2,7,9,6,5
    db   3,8,6,5,4,9,7,2,1
    db   2,7,9,1,6,8,4,5,3
    db   1,5,4,3,7,2,6,8,9
    db   7,4,8,9,3,5,2,1,6
    db   5,6,2,7,1,4,3,9,8
    db   9,3,1,2,8,6,5,7,4
	
	db 5, 3, 4, 6, 7, 8, 9, 1, 2  
	db 6, 7, 2, 1, 9, 5, 3, 4, 8  
	db 1, 9, 8, 3, 4, 2, 5, 6, 7  
	db 8, 5, 9, 7, 6, 1, 4, 2, 3  
	db 4, 2, 6, 8, 5, 3, 7, 9, 1  
	db 7, 1, 3, 9, 2, 4, 8, 5, 6  
	db 9, 6, 1, 5, 3, 7, 2, 8, 4  
	db 2, 8, 7, 4, 1, 9, 6, 3, 5  
	db 3, 4, 5, 2, 8, 6, 1, 7, 9  

	db 8, 2, 7, 1, 5, 4, 3, 9, 6  
	db 9, 6, 5, 3, 2, 7, 1, 4, 8  
	db 3, 4, 1, 6, 8, 9, 7, 5, 2  
	db 5, 9, 3, 4, 6, 8, 2, 7, 1  
	db 4, 7, 2, 5, 1, 3, 6, 8, 9  
	db 6, 1, 8, 9, 7, 2, 4, 3, 5  
	db 7, 8, 6, 2, 3, 5, 9, 1, 4  
	db 1, 5, 4, 7, 9, 6, 8, 2, 3  
	db 2, 3, 9, 8, 4, 1, 5, 6, 7  

	db 4, 1, 7, 3, 6, 9, 8, 2, 5  
	db 6, 3, 2, 1, 5, 8, 9, 7, 4  
	db 9, 5, 8, 7, 2, 4, 6, 3, 1  
	db 8, 2, 5, 4, 3, 7, 1, 6, 9  
	db 7, 9, 1, 6, 8, 2, 4, 5, 3  
	db 3, 4, 6, 5, 9, 1, 7, 8, 2  
	db 5, 7, 3, 2, 4, 6, 1, 9, 8  
	db 2, 8, 4, 9, 1, 5, 3, 7, 6  
	db 1, 6, 9, 8, 7, 3, 5, 4, 2  



boardNum: times 81 db 0
showNum :times 81 db 0
stack1 :times 81 dw 0
stack2 :times 81 dw 0
stack3 :times 81 dw 0
stack5:times 81 dw 0
score_game:dw 0
undo_count:dw 0
wrong_in:db' wrong input...'
wrong_in2:db'               '
wrong_len:dw 15
wrong_len2:dw 15
valid_rows:db 0
valid_coloum:db 0
valid_row:db'Valid rows:'
valid_coloumns:db'Valid coloumns:'
