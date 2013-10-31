DATAS SEGMENT
;numbers-----------------------------------------
zero	db	'********'
		db	'*      *'
		db	'*      *'
		db	'*      *'
		db	'*      *'
		db	'*      *'
		db	'********'

one		db	'       *'
		db	'       *'
		db	'       *'
		db	'       *'
		db	'       *'
		db	'       *'
		db	'       *'

two		db	'********'
		db	'       *'
		db	'       *'
		db	'********'
		db	'*       '
		db	'*       '
		db	'********'
		
three	db	'********' 
		db	'       *' 
		db	'       *' 
		db	'********' 
		db	'       *' 
		db	'       *' 
		db	'********' 
		
four	db	'*      *' 
		db	'*      *' 
		db	'*      *' 
		db	'********' 
		db	'       *' 
		db	'       *' 
		db	'       *' 
		
five	db	'********'
		db	'*       '
		db	'*       '
		db	'********'
		db	'       *'
		db	'       *'
		db	'********'
		
six		db	'********'
		db	'*       '
		db	'*       '
		db	'********'
		db	'*      *'
		db	'*      *'
		db	'********'
		
seven	db	'********'
		db	'       *'
		db	'       *'
		db	'       *'
		db	'       *'
		db	'       *'
		db	'       *'
		
eight	db	'********'
		db	'*      *'
		db	'*      *'
		db	'********'
		db	'*      *'
		db	'*      *'
		db	'********'
		
nine	db	'********'
		db	'*      *'
		db	'*      *'
		db	'********'
		db	'       *'
		db	'       *'
		db	'********'

dots	db  '        '
		db  '        '
		db  '   **   '
		db  '        '
		db  '   **   '
		db  '        '
		db  '        '
;main_clock--------------------------------------
string1	db	'Press any key to function manu.$'
string_column	db  42
string_row		db  19
column 	db 	2
row 	db 	8
len_line equ 8
len_string equ	31
temp 	db 	0
eightconst   db  8

;calendar----------------------------------------
year	dw	?
month	db	?
day		db	?
weekday db  ?
c_column db  60
c_row	 db	 17

day1	db 'Monday$'
day2	db 'Tuesday$'
day3	db 'Wednesday$'
day4	db 'Thursday$'
day5    db 'Friday$'
day6    db 'Saturday$'
day0    db 'Sunday$'

;function_manu-----------------------------------
HelloKitty   db   '       *            *          '
			 db	  '      * **        _* *_        '
			 db   '     *    *******{_(@) }       '
			 db   '    *                 ~*       '
			 db   '   *                    *      '
			 db   '   *     O        O     *      '
			 db   '  ***        ()        ***     '
			 db   '   ***                ***      '
			 db   '     ***            ***        '
			 db   '        ************           '
			 db   '                               '
			 
len_hellok	equ  31
hellok_column	db	2
hellok_row		db	8

manu	db	'========================================'
		db	'       Welcome to Function Manu!        '
		db  '                                        '
		db  '    1         World Time                '
		db  '    2         Alarm Clock               '
		db  '    3         Countdown Timer           '
		db  '    4         Back to Clock             '
		db  '    5         Help&About                '
		db  '    6         Quit                      '
		db  '                                        '
		db	'========================================'
		db  'Enter Function Num:                     '

     	
len_manu  equ  40
manu_column  db  33
manu_row     db  8
enter_column   db  52
enter_row      db  19
mess1  db  'error! Enter again.$'
	
;world_time--------------------------------------

world_time	db	'========================================'
			db	'        *** World   Time ***            '
			db  '                                        '
			db  '     *    1     BeiJing                 '
			db  '     *    2     Tokyo                   '
			db  '     *    3     London                  '
			db  '     *    4     New York                '
			db  '     *    5     Paris                   '
			db  '     *    6     Back to Manu            '
			db  '                                        '
			db	'========================================'
			db  'Enter Function Num:                     '	
all_sub      db 13
dif_tokyo	 db 14
dif_london   db 5
dif_ny       db 0
dif_paris    db 6
what_time    db ? 

name_beijing  db  'Beijing'
name_tokyo    db  'Tokyo'
name_london   db  'London'
name_ny       db  'New York'
name_paris    db  'Paris'

;help-----------------------------------------------

about_info   db   '****************************** '
			 db   '*      Hello Kitty Clock     * '
			 db   '*                            * '
			 db   '*Description:A multi-function* '
			 db   '*        digital alarm clock * '
			 db   '*Version:1.0                 * '
			 db   '*Date:2011-6-9               * '
			 db   '*Author:Yiran Wang-102873    * '
			 db   '*Email:                      * '
			 db   '*    combustible44@gmail.com * '
			 db   '****************************** '
help_info	db	'========================================'
			db	'                Help                    '
			db  '1 World Time:View current time around   '
			db  'the world.                              '
			db  '2 Alarm Clock:Set time to get alarmed.  '
			db  'HelloKitty will be flashing to alarm you'
			db  '                                        '
			db  '3 Countdown Timer:Set seconds to count  '
			db  'from.Press any key to start.Any key to  '
			db  'pause during the counting,then 0 to manu'
			db  '                PRESS ANY KEY ->MANU    '
			db	'========================================' 

;Alarms---------------------------------------------
HelloKitty2  db   '       *            *          '
			 db   '      ****        _***_        '
			 db   '     ************{_(@) }       '
			 db   '    ******************~*       '
			 db   '   **********************      '
			 db   '   ******O********O******      '
			 db   '  ***********()***********     '
			 db   '   **********************      '
			 db   '     ******************        '
			 db   '        ************           '
			 db   '                               '

 
alarming	   db	'========================================'
				db	'                                        '
				db  '                                        '
				db  '          ******************            '
				db  '          *    Alarm!!!!   *            '
				db  '          ******************            '
				db  '          *  TIME IS UP!!  *            '
				db  '          ******************            '
				db  '                                        '
				db  '                                        '
				db	'========================================'
				db  'Press any key to manu.                  '

alarm_hour    db   0
alarm_min     db   0
alarm_on      db   0
hour_column   db	57
min_column    db    60
hour_row	  db    13
on_column     db    50
on_row        db    16

string2       db   'Alarm is on!$'
string22     db   'Press any key to manu'

alarm_screen    db	'========================================'
				db	'        *** Alarm  Clock ***            '
				db  '                                        '
				db  '                                        '
				db  '                                        '
				db  '       Set Alarm Time   00:00           '
				db  '                        (h:m)           '
				db  '                                        '
				db  '       Alarm on?     1 Yes              '
				db  '                     0 No               '
				db	'========================================'
				db  '                                        '
;countdown_timer---------------------------------
countScreen     db	'========================================'
				db	' *Countdown* |                          '
				db  '  **Timer**  |                          '
				db  '             |                          '
				db  '   Start     |                          '
				db  '  Counting   |                          '
				db  '   From      |                          '
				db  ' (001~999):  |                          '
				db  '    000      |                          '
				db  '             |                          '
				db	'========================================'
				db  '                                        '  
count_column    db  37
count_row       db  16
countnum        dw  ?
count1          db  0
count2          db  0
count3          db  0
isup            db  0
string4         db  'Press any key to start  '
string5         db  'Press any key to stop   '
string7         db  '0->manu; others->restart'
;public------------------------------------------
	buff   db   100  dup('?')
	clear_screen  db 75 dup(' '),13,10
				  db 75 dup(' '),13,10
				  db 75 dup(' '),13,10
				  db 75 dup(' '),13,10
				  db 75 dup(' '),13,10
				  db 75 dup(' '),13,10
				  db 75 dup(' '),13,10
				  db 75 dup(' '),13,10
				  db 75 dup(' '),13,10
				  db 75 dup(' '),13,10
				  db 75 dup(' '),13,10
				  db 75 dup(' '),'$'
	DATAS ENDS


STACKS SEGMENT
	room dw 50 dup(0)
STACKS ENDS

CODES SEGMENT
    ASSUME CS:CODES,DS:DATAS,SS:STACKS
START:
    mov ax,datas
    mov ds,ax
    mov ax,stacks
    mov ss,ax
    
    mov al,07h	;将hellokitty_alarm设置为7号中断
	mov ah,35h
	int 21h
	push es
	push bx
	push ds
	mov ax,seg hellokitty_alarm
	mov ds,ax
	mov dx,offset hellokitty_alarm
	mov al,7h
	mov ah,25h
	int 21h
	
	pop ds
Beijing_clock:
	mov al,all_sub
	mov what_time,al
    call walking_clock
    
functionList:
	call clear
	mov al,0
	mov ah,0ch
	int 21h
	call showKitty
	call showManu
get_func:
	mov ah,01h	;让用户输入一个字符并回显
	int 21h
	
read_func:	;看用户输入了什么功能
	cmp al,31h
	jz  w_time
	cmp al,32h
	jz  alarm_clock
	cmp al,33h
	jz  countdown
	cmp al,34h
	jz  Beijing_clock
	cmp al,35h
	jz  help
	cmp al,36h
	jz  exit
	
	mov dx,offset mess1		;如果用户输入的不是12345，则报错，让他重输
	mov ah,09h
	int 21h
	mov bh,0
	mov dh,enter_row
	mov dl,enter_column
	mov ah,2h
	int 10h
	jmp get_func	

w_time:
	call showWorld

get_wfunc:
	mov ah,01h
	int 21h

read_wfunc:	;看用户输入了什么功能
	cmp al,31h
	jz  Beijing_clock
	cmp al,32h
	jz  tokyo_clock
	cmp al,33h
	jz  london_clock
	cmp al,34h
	jz  ny_clock
	cmp al,35h
	jz  paris_clock
	cmp al,36h
	jz  functionList
	
	mov dx,offset mess1		;如果用户输入的不是123456，则报错，让他重输
	mov ah,09h
	int 21h
	mov bh,0
	mov dh,enter_row
	mov dl,enter_column
	mov ah,2h
	int 10h
	jmp get_wfunc	

tokyo_clock:
	mov al,dif_tokyo
	mov what_time,al
	call walking_clock
	jmp functionList

london_clock:
	mov al,dif_london
	mov what_time,al
	call walking_clock
	jmp functionList

ny_clock:
	mov al,dif_ny
	mov what_time,al
	call walking_clock
	jmp functionList
	
paris_clock:
	mov al,dif_paris
	mov what_time,al
	call walking_clock
	jmp functionList
	
alarm_clock:	
	call showAlarm
	call setAlarm
	call onAlarm
	mov al,alarm_on
	cmp al,1
	jz have_alarm
	jmp functionList

have_alarm:
	mov al,0
	mov alarm_on,al
	mov cx,12
	mov bp,seg string2
	mov es,bp
	mov bp,offset string2
	mov dh,on_row
	mov dl,on_column
	add dl,4
	mov bh,0
	mov bl,0ah
	mov al,1
	mov ah,13h
	int 10h
	
	mov cx,21
	mov bp,seg string22
	mov es,bp
	mov bp,offset string22
	inc dh
	sub dl,10h
	mov bl,0ah
	mov al,1
	mov ah,13h
	int 10h
	
	mov ah,0bh
	int 21h
	cmp al,0
	jnz functionList
	
	mov bh,alarm_hour
	mov bl,alarm_min
	mov ah,2ch
	int 21h
	mov dl,cl
	
loop1:
	mov ah,2ch
	int 21h
	cmp dl,cl
	jz loop1
		
	cmp ch,bh
	jz alarm1
	jmp have_alarm
alarm1:
	cmp cl,bl
	jz alarm2
	jmp have_alarm
alarm2:
	int 07h
	mov ah,07h
	int 21h
	mov ah,0bh
	int 21h
	cmp al,0h
	jz functionList
	
countdown:
	call showCountd
	call getcountnum
	mov ah,07h
	int 21h
	mov ah,0bh
	int 21h
	cmp al,0h
	jz countdown2
countdown2:
	call fcount
	mov ah,isup
	cmp ah,0
	jz functionList
	int 07h
	mov ah,07h
	int 21h
	mov ah,0bh
	int 21h
	cmp al,0h
	jz functionList	
		
help:
	call clear
	call print_help
	mov ah,07h
	int 21h
	mov ah,0bh		;用户按任意键前往主菜单
	int 21h
	cmp al,0h
	jz functionList
	
exit:
	pop dx
	pop ds
	mov al,7h
	mov ah,25h
	int 21h	
    mov ah,4ch	;退出程序
    int 21h
    
;子程序们-----@@@@@@@@@@@@---------------------------------------------

;倒计时程序------------------------------------------
fcount proc far
	push ax
	push bx
	push cx
	push dx
	mov ah,row
	mov al,column
	push ax
	mov eightconst,9
	
big_loop:
	mov bp,seg string5
	mov es,bp
	mov bp,offset string5
	mov cx,24
	mov bh,0
	mov bl,0ah
	mov al,1
	mov ah,13h
	mov dh,17
	mov dl,47
	int 10h
	
	mov ah,0bh
	int 21h
	cmp al,0
	jnz  pause
	
	mov ah,2ch
	int 21h
	mov bl,dh	
	mov al,47
	mov column,al
	mov ah,9
	mov row,ah
	mov dl,count1
	call showNumber
	mov dl,count2
	call showNumber
	mov dl,count3
	call showNumber

little_loop:
	mov ah,2ch
	int 21h
	cmp bl,dh
	jz  little_loop

	dec countnum	
	cmp countnum,0
	jz pre_timeup

	mov ax,countnum
	cwd
	mov bx,100
	div bx
	add al,30h
	mov count1,al
	mov ax,dx
	mov bl,10
	div bl
	add al,30h
	mov count2,al
	add ah,30h
	mov count3,ah
	jmp big_loop
	
pause:
	mov bp,seg string7
	mov es,bp
	mov bp,offset string7
	mov cx,24
	mov bh,0
	mov bl,0ah
	mov al,1
	mov ah,13h
	mov dh,17
	mov dl,47
	int 10h

	mov al,0
	mov ah,0ch
	int 21h
	mov ah,07h
	int 21h
	cmp al,30h
	jz  timeup
	jmp big_loop
	
pre_timeup:
	mov ah,1
	mov isup,ah

timeup:
	mov eightconst,8
 	pop ax
 	mov row,ah
 	mov column,al
	pop dx
	pop cx
	pop bx
	pop ax
	ret
fcount endp
;fcount完-----------------

;用于获得倒计时的起始数字的--------------------------
getcountnum proc far
	push ax
	push bx
	push cx
	push dx
	
	mov ah,01h
	int 21h
	mov count1,al
	sub al,30h
	cbw
	mov bx,100
	mul bx
	mov countnum,ax
	
	mov dh,count_row
	mov dl,count_column
	inc dl
	mov bh,0
	mov ah,2
	int 10h
	mov ah,01h
	int 21h
	mov count2,al
	sub al,30h
	mov bl,10
	mul bl
	add countnum,ax
	
	inc dl
	mov bh,0
	mov ah,2
	int 10h
	mov ah,01h
	int 21h
	mov count3,al
	sub al,30h
	cbw
	add countnum,ax
	
	mov bp,seg string4
	mov es,bp
	mov bp,offset string4
	mov cx,24
	mov bh,0
	mov bl,0ah
	mov al,1
	mov ah,13h
	mov dh,17
	mov dl,47
	int 10h
	
	pop dx
	pop cx
	pop bx
	pop ax
	ret
getcountnum endp
;getcountnum完------------
	
	 
;用于显示倒计时界面的--------------------------------
showCountd proc far
	push ax
	push bx
	push cx
	push dx
	
	mov bp,seg countScreen
	mov es,bp
	mov bp,offset countScreen
	mov ah,manu_row
	push ax

	mov cx,12

loop_showCountd:
	push cx
	mov cx,len_manu
	mov dh,manu_row
	mov dl,manu_column
	mov bh,0
	mov bl,0ah
	mov al,1
	mov ah,13h
	int 10h
	inc dh
	mov manu_row,dh
	add bp,len_manu
	pop cx
loop loop_showCountd

	pop ax
	mov manu_row,ah	;恢复原坐标
	mov bh,0
	mov dl,count_column
	mov dh,count_row
	mov ah,2h		;置光标
	int 10h
	pop dx
	pop cx
	pop bx
	pop ax
	ret
showCountd endp	
;showCountd完------------------


;清空从第八行开始的一块区域--------------------------
clear proc far
	push ax
	push bx
	push dx
    mov bh,0
    mov dh,8
    mov dl,0
    mov ah,2h
    int 10h
	mov dx,offset clear_screen
	mov ah,09h
	int 21h
	mov bh,0
    mov dh,8
    mov dl,0
    mov ah,2h
    int 10h
	pop dx
	pop bx
	pop ax
	ret
clear endp	
;clear完---------------

;一个处理时间的子程序，使之保持在00~24,参数是ch和what_time-------------
time_processor proc far
	push ax
	push bx
	push dx
	add ch,what_time
	sub ch,all_sub
	cmp ch,24
	jnb over_24
	cmp ch,0
	jb  below_0
	jmp finish_tpro
	
over_24:
	sub ch,24
	jmp finish_tpro
	
below_0:
	add ch,24
	jmp finish_tpro
	
finish_tpro:		
	pop dx
	pop bx
	pop ax
	ret
time_processor endp
;time_processor完----------


;一个显示系统时间的大子程序，参数是what_time里面的数字----------------
walking_clock proc far
	push ax
	push bx
	push cx
	push dx

clock:
	call clear
	mov bh,0
	mov c_row,17
	mov c_column,60
	mov ah,2
	int 10h
	call where_time
    mov ah,2Ch	;读时钟
    int 21h
	call time_processor
	mov temp,dh
    mov column,2
    mov row,8
    
	call printWord
	call getHMS

	jmp newclock    	
	
newClock:
	mov ah,2Ch	;读时钟
    int 21h   
    
    mov al,temp
	cmp al,dh
	jz	newClock
	
	mov ah,0bh	;查看键盘状态，用户是否输入任何字符
    int 21h
	cmp al,0h
    jz clock
    
   	mov ah,07h	;把原来输入的any key吞掉
	int 21h
	pop dx
	pop cx
	pop bx
	pop ax
	ret
walking_clock endp
;walking_clock完------------------

;显示北京时间中的日期or外国城市名--------------
where_time proc far
	push ax
	push bx
	push cx
	push dx
	mov bh,0
	mov bl,0ah
	mov dh,c_row
	mov dl,33
	mov al,1
	mov ah,what_time
	cmp ah,13
	jz  is_beijing
	cmp ah,14
	jz  is_tokyo
	cmp ah,5
	jz  is_london
	cmp ah,0
	jz  is_ny
	cmp ah,6
	jz  is_paris
		
is_beijing:	
	call printDate	;显示日期
	mov bp,seg name_beijing
	mov es,bp
	mov bp,offset name_beijing
	mov cx,7
	jmp finish_where

is_tokyo:
	mov bp,seg name_tokyo
	mov es,bp
	mov bp,offset name_tokyo
	mov cx,5
	jmp finish_where
	
is_paris:
	mov bp,seg name_paris
	mov es,bp
	mov bp,offset name_paris
	mov cx,5
	jmp finish_where

is_ny:
	mov bp,seg name_ny
	mov es,bp
	mov bp,offset name_ny
	mov cx,8
	jmp finish_where
	
is_london:
	mov bp,seg name_london
	mov es,bp
	mov bp,offset name_london
	mov cx,6
	jmp finish_where

finish_where:
	mov ah,13h
	int 10h	
	pop dx
	pop cx
	pop bx
	pop ax
	ret
where_time endp


;一个显示世界时钟地区列表的子程序--------
showWorld proc far
	push ax
	push bx
	push cx
	push dx
	mov bp,seg world_time
	mov es,bp
	mov bp,offset world_time
	mov ah,manu_row
	push ax

	mov cx,12

loop_showWorld:
	push cx
	mov cx,len_manu
	mov dh,manu_row
	mov dl,manu_column
	mov bh,0
	mov bl,0ah
	mov al,1
	mov ah,13h
	int 10h
	inc dh
	mov manu_row,dh
	add bp,len_manu
	pop cx
loop loop_showWorld

	pop ax
	mov manu_row,ah	;恢复原坐标
	mov bh,0
	mov dl,enter_column
	mov dh,enter_row
	mov ah,2h		;置光标
	int 10h
	pop dx
	pop cx
	pop bx
	pop ax
	ret
showWorld endp
;showWorld完-------------

;一个显示Hello Kitty的子程序---------
showKitty proc far		
	push ax
	push bx
	push cx
	push dx
	mov bp,seg HelloKitty
	mov es,bp
	mov bp,offset HelloKitty
	mov cx,11
	mov bh,0
	mov ah,hellok_row
	push ax
Kitty:
	push cx
	mov cx,len_hellok
	mov dh,hellok_row
	mov dl,hellok_column
	mov bl,0fh
	mov al,1
	mov ah,13h
	int 10h
	inc dh
	mov hellok_row,dh
	add bp,1fh
	pop cx
loop Kitty
    pop ax
    mov hellok_row,ah	;恢复原坐标
	pop dx
	pop cx
	pop bx
	pop ax
	ret
showKitty endp
	
;showKitty完---------

;显示主菜单------------------------------
showManu proc far	
	push ax
	push bx
	push cx
	push dx
	mov cx,12
	mov bp,seg manu
	mov es,bp
	mov bp,offset manu
	mov ah,manu_row
	push ax
	
manu_loop:
	push cx
	mov cx,len_manu
	mov	bl,0ah
	mov	bh,0
	mov dh,manu_row
	mov dl,manu_column
	mov al,1
	mov ah,13h
	int 10h
	inc dh
	mov manu_row,dh
	add bp,40
	pop cx
loop manu_loop
	
	mov bh,0
	mov dl,enter_column
	mov dh,enter_row
	mov ah,2h		;置光标
	int 10h
	pop ax
	mov manu_row,ah	;恢复原坐标
	pop dx
	pop cx
	pop bx
	pop ax
	ret
showManu endp
;showManu完---------

;用于显示alarm功能下的设定时间提示和开关-----------------------
showAlarm proc far
	push ax
	push bx
	push cx
	push dx
	mov cx,12
	mov bp,seg alarm_screen
	mov es,bp
	mov bp,offset alarm_screen
	mov ah,manu_row
	push ax
	
showAlarm_loop:
	push cx
	mov cx,len_manu
	mov	bl,0ah
	mov	bh,0
	mov dh,manu_row
	mov dl,manu_column
	mov al,1
	mov ah,13h
	int 10h
	inc dh
	mov manu_row,dh
	add bp,40
	pop cx
loop showAlarm_loop
	
	mov bh,0
	mov dl,on_column
	mov dh,on_row
	mov ah,2h		;置光标
	int 10h
	pop ax
	mov manu_row,ah	;恢复原坐标
	pop dx
	pop cx
	pop bx
	pop ax
	ret
showAlarm endp
;showAlarm完-----------

;用于将用户输入的闹钟时间存储起来--------------------------
setAlarm proc far    
    push ax
    push bx
    push cx
    push dx
    
    mov bh,0
	mov dl,hour_column
	mov dh,hour_row
	mov ah,2h		;置光标
	int 10h
	mov ah,01h
	int 21h
	sub al,30h
	mov cl,10
	mul cl		
	mov ch,al	;小时的十位暂存于ch
	inc dl
	mov ah,2h
	int 10h
	mov ah,01h
	int 21h
	sub al,30h
	add al,ch	;将小时的十位和个位相加
	mov alarm_hour,al
	
	add dl,2
	mov ah,2h
	int 10h
	mov ah,01h
	int 21h
	sub al,30h
	mul cl
	mov ch,al
	inc dl
	mov ah,2h
	int 10h
	mov ah,01h
	int 21h
	sub al,30h
	add al,ch
	mov alarm_min,al	;存入分钟
	
	pop dx
	pop cx
	pop bx
	pop ax
	ret
setAlarm endp
;setAlarm完------------

;打开或关闭闹钟------------------------------------
onAlarm proc far
    push ax
    push bx
    push cx
    push dx
    mov bh,0
	mov dl,on_column
	mov dh,on_row
	mov ah,2h		;置光标
	int 10h
	mov ah,01h
	int 21h
	sub al,30h
	mov alarm_on,al	;将0或1存入alarm_on
	pop dx
	pop cx
	pop bx
	pop ax
	ret
onAlarm endp
;onAlarm完---------------------

;显示一排字符string1(第十行第一列)-----------------
printWord proc far	
	push ax
	push bx
	push cx
	push dx
	mov ah,13h
	mov bp,seg string1
	mov es,bp
	mov bp,offset string1
	mov bl,0ah
	mov dh,string_row
	mov dl,string_column
	mov bh,0
	mov cx,len_string
	int 10h
	call setCursor
	pop dx
	pop cx
	pop bx
	pop ax
	ret
printWord endp
;printWord完-----------

;一个显示当日日期的程序-----------------------
printDate proc far
	push ax
	push bx
	push cx
	push dx
	mov ah,2ah
	int 21h
	mov year,cx
	mov month,dh
	mov day,dl
	mov weekday,al
	
	mov ax,year
	cwd
	mov bx,1000
	div bx
	add al,30h
	call printIt
	
	mov ax,dx
	cwd
	mov bx,100
	div bx
	add al,30h
	call printIt
	
	mov ax,dx
	cwd
	mov bx,10
	div bx
	add al,30h
	call printIt
	
	mov al,dl
	add al,30h
	call printIt
	mov al,2fh
	call printIt
	
	mov al,month
	cbw
	mov bl,10
	div bl
	add al,30h
	call printIt
	add ah,30h
	mov al,ah
	call printIt
	mov al,2fh
	call printIt
	
	mov al,day
	cbw
	div bl
	add al,30h
	call printIt
	add ah,30h
	mov al,ah
	call printIt
	
	mov al,weekday
	cmp al,0
	jz dayzero
	cmp al,1
	jz dayone
	cmp al,2
	jz daytwo
	cmp al,3
	jz daythree
	cmp al,4
	jz dayfour
	cmp al,5
	jz dayfive
	cmp al,6
	jz daysix
	
dayzero:
	mov bp,seg day0
	mov es,bp
	mov bp,offset day0
	mov cx,6
	jmp finish
dayone:
	mov bp,seg day1
	mov es,bp
	mov bp,offset day1
	mov cx,6
	jmp finish
daytwo:
	mov bp,seg day2
	mov es,bp
	mov bp,offset day2
	mov cx,7
	jmp finish
daythree:
	mov bp,seg day3
	mov es,bp
	mov bp,offset day3
	mov cx,9
	jmp finish
dayfour:
	mov bp,seg day4
	mov es,bp
	mov bp,offset day4
	mov cx,8
	jmp finish
dayfive:
	mov bp,seg day5
	mov es,bp
	mov bp,offset day5
	mov cx,6
	jmp finish
daysix:
	mov bp,seg day6
	mov es,bp
	mov bp,offset day6
	mov cx,8
	jmp finish
	
finish:
	mov dh,c_row
	mov dl,c_column
	sub dl,15h
	mov bl,0ah
	mov bh,0h
	mov al,1h
	mov ah,13h
	int 10h
	
	pop dx
	pop cx
	pop bx
	pop ax
	ret
printDate endp

;printDate完-----------

;一个一个地打印某字符串中的字符,参数为al中的字符----------
printIt proc far 
	push ax
	push bx
	push cx
	push dx
	mov bh,0h
	mov dl,c_column
	mov dh,c_row
	mov ah,02h
	int 10h
	mov bl,0ah
	mov cx,1h
	mov ah,09h
	inc dl
	mov c_column,dl
	int 10h
	
	pop dx
	pop cx
	pop bx
	pop ax
	ret
printIt endp

;printIt完-----------


;用于将光标置于希望用户输入字符的位置------------------
setCursor proc far	
	push ax
	push dx
	mov dh,14h
	mov dl,60
	mov ah,2h
	int 10h
	pop dx
	pop ax
	ret
setCursor endp
;setCursor完--------

;将两位数变成两个一位数，传入的参数是al寄存器中数字-----------
numberProcessor proc far	
	push bx
	mov bl,10
	cbw
	div bl
	pop	bx
	ret		
numberProcessor endp
;最后得到存在ah中的余数（个位数字）和al中的商（十位数字）
;numberProcessor完-------


;这个子程序用于显示小时:分钟:秒，参数为ch,cl,dh---------------
getHMS proc far	
gethour:	
	mov al,ch
	call numberProcessor
	mov dl,al
	add dl,30h
	call showNumber
	mov dl,ah
	add dl,30h
	call showNumber
	call showdots
	
getmin:
	mov al,cl
	call numberProcessor
	mov dl,al
	add dl,30h
	call showNumber
	mov dl,ah
	add dl,30h
	call showNumber
	call showdots

getsec:
	mov al,dh
	call numberProcessor
	mov dl,al
	add dl,30h
	call showNumber
	mov dl,ah
	add dl,30h
	call showNumber
	
	ret
getHMS endp

;getHMS完--------

;显示数字，传入的参数是dl寄存器中的一个一位数-----------------
showNumber	proc far	
	push ax
	push bx
	push cx
	push dx

	mov cx,7h
	
	cmp dl,30h
	jz	showZero
	cmp dl,31h
	jz	showOne
	cmp dl,32h
	jz	showTwo
	cmp dl,33h
	jz  showThree
	cmp dl,34h
	jz  showFour
	cmp dl,35h
	jz  showFive
	cmp dl,36h
	jz  showSix
	cmp dl,37h
	jz  showSeven
	cmp dl,38h
	jz  showEight
	cmp dl,39h
	jz  showNine
	jmp	printNumber
	
showZero:
    mov bp,seg zero
    mov es,bp
	mov bp,offset zero
    jmp printNumber

showOne:
    mov bp,seg one
    mov es,bp
	mov bp,offset one
    jmp printNumber
    
showTwo:
    mov bp,seg two
    mov es,bp
	mov bp,offset two
    jmp printNumber
    
showThree:
    mov bp,seg three
    mov es,bp
	mov bp,offset three
    jmp printNumber

showFour:
    mov bp,seg four
    mov es,bp
	mov bp,offset four
    jmp printNumber
    
showFive:
    mov bp,seg five
    mov es,bp
	mov bp,offset five
    jmp printNumber

showSix:
    mov bp,seg six
    mov es,bp
	mov bp,offset six
    jmp printNumber
    
showSeven:
    mov bp,seg seven
    mov es,bp
	mov bp,offset seven
    jmp printNumber

showEight:
    mov bp,seg eight
    mov es,bp
	mov bp,offset eight
    jmp printNumber
    
showNine:
    mov bp,seg nine
    mov es,bp
	mov bp,offset nine
    jmp printNumber
    
printNumber:
	push cx
	mov cx,len_line
	mov bh,0
	mov dh,row
	mov dl,column
	mov bl,0ah
	mov al,1
	mov ah,13h
	int 10h
	add dh,1
	mov row,dh
	add bp,8h
	pop cx
loop printNumber

showNumberExit:
	mov ah,column
	add ah,9h
	mov column,ah
	mov ah,eightconst
	mov row,ah
	call setCursor
	pop dx
	pop cx
	pop bx
	pop ax
	ret
showNumber endp
;showNumber完-------


;显示时分秒之间的冒号---------------
showdots proc far
	push ax
	push bx
	push cx
	push dx
	
	mov bp,seg dots
	mov es,bp
	mov bp,offset dots
	mov cx,7h

printDots:
	push cx
	mov cx,len_line
	mov bh,0
	mov dh,row
	mov dl,column
	mov bl,0ah
	mov al,1
	mov ah,13h
	int 10h
	add dh,1
	mov row,dh
	add bp,8h
	pop cx
loop printDots	
	
	mov ah,column
	add ah,9h
	mov column,ah
	mov ah,8h
	mov row,ah
	call setCursor
	pop dx
	pop cx
	pop bx
	pop ax
	ret
showdots endp    
;showdots完-----------

;用于显示帮助信息--------------------------------------------
print_help proc far
	push ax
	push bx
	push cx
	push dx
	mov bp,seg about_info
	mov es,bp
	mov bp,offset about_info
	mov cx,11
	mov bh,0
	mov ah,hellok_row
	push ax
abouti:
	push cx
	mov cx,len_hellok
	mov dh,hellok_row
	mov dl,hellok_column
	mov bl,0eh
	mov al,1
	mov ah,13h
	int 10h
	inc dh
	mov hellok_row,dh
	add bp,1fh
	pop cx
loop abouti
    pop ax
    mov hellok_row,ah	;恢复原坐标

;显示帮助    
    mov cx,12
	mov bp,seg help_info
	mov es,bp
	mov bp,offset help_info
	mov ah,manu_row
	push ax
	
help_loop:
	push cx
	mov cx,len_manu
	mov	bl,0ah
	mov	bh,0
	mov dh,manu_row
	mov dl,manu_column
	mov al,1
	mov ah,13h
	int 10h
	inc dh
	mov manu_row,dh
	add bp,40
	pop cx
loop help_loop
	
	mov bh,0
	mov dl,enter_column
	mov dh,enter_row
	mov ah,2h		;置光标
	int 10h
	pop ax
	mov manu_row,ah	;恢复原坐标
	
	pop dx
	pop cx
	pop bx
	pop ax
	ret
print_help endp
;print_help完---------------

;闹钟kitty---------------------------------------------
hellokitty_alarm proc far		
	push ax
	push bx
	push cx
	push dx
	mov al,0
	mov alarm_on,al
	
	call AlarmNow
	mov cx,30
bigloop:
	mov ax,cx
	mov bl,2
	div bl
	cmp ah,1
	jz pic1
	jmp pic2
pic1:
	mov bp,seg HelloKitty
	mov es,bp
	mov bp,offset HelloKitty	
	jmp showpic
	
pic2:	
	mov bp,seg HelloKitty2
	mov es,bp
	mov bp,offset HelloKitty2
	jmp showpic
			
showpic:
	push cx
	mov cx,11
	mov bh,0
	mov ah,hellok_row
	push ax
Kitty2:
	push cx
	mov cx,len_hellok
	mov dh,hellok_row
	mov dl,hellok_column
	mov bl,0fh
	mov al,1
	mov ah,13h
	int 10h
	inc dh
	mov hellok_row,dh
	add bp,1fh
	pop cx
loop Kitty2
    pop ax
    mov hellok_row,ah	;恢复原坐标
    
alarm_now:
	mov cx,60000
	call waitf
	
	pop cx
loop bigloop

finish_alarming:
	pop dx
	pop cx
	pop bx
	pop ax
	iret
	
waitf proc near	;这个是照课本391页抄的
	push ax
waitf1:
	in  al,61h
	and al,10h
	cmp al,ah
	je  waitf1
	mov ah,al
	loop waitf1
	pop ax
	ret
waitf endp

AlarmNow proc near
	push ax
	push bx
	push cx
	push dx
	mov cx,12
	mov bp,seg alarming
	mov es,bp
	mov bp,offset alarming
	mov ah,manu_row
	push ax
	
loop5:
	push cx
	mov cx,len_manu
	mov	bl,0ch
	mov	bh,0
	mov dh,manu_row
	mov dl,manu_column
	mov al,1
	mov ah,13h
	int 10h
	inc dh
	mov manu_row,dh
	add bp,40
	pop cx
loop loop5
	
	mov bh,0
	mov dl,enter_column
	mov dh,enter_row
	mov ah,2h		;置光标
	int 10h
	pop ax
	mov manu_row,ah	;恢复原坐标
	pop dx
	pop cx
	pop bx
	pop ax
	ret
AlarmNow endp

hellokitty_alarm endp
;hellokitty_alarm完---------

CODES ENDS
    END START




