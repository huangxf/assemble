TITLE Intergers Summation Programe

;This program is used to accept two user input numbers from termianl,
;add these two numbers together and print result on the terminal


include \masm32\include\Irvine32.inc

includelib \masm32\lib\Irvine32.lib
includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib


INTEGER_COUNT = 3

.data

str1 BYTE "Input a signed integer:"
str2 BYTE "The sum of the integer is:"
array DWORD INTEGER_COUNT dup(?)

.code
main PROC
	call Clrscr
	mov esi, offset array
	mov ecx, INTEGER_COUNT
	call PromptForIntegers
	call ArraySum
	call DisplaySum
	exit
main ENDP

PromptForIntegers PROC USES ecx edx esi 
	mov edx, OFFSET str1
L1:	call WriteString
	call ReadInt                           ;read a integer from terminal to eax
	call Crlf                              ;goto next line
	mov  [esi],eax
	add  esi, TYPE DWORD
	loop L1
	ret
PromptForIntegers ENDP

ArraySum PROC
	mov eax, 0
L2: add eax, [esi]
	add esi, TYPE DWORD
	loop L2
	ret
ArraySum ENDP

DisplaySum PROC
	mov edx, offset str2
	call WriteString
	call WriteInt                           ;Write Sum value in eax to terminal
	ret
DisplaySum ENDP

END main