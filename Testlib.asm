include \masm32\include\irvine32.inc
includelib \masm32\lib\irvine32.lib

.data
arrayD DWORD 1000h, 2000h, 3000h
prompt1 BYTE "Enter a 32-bit signed integer:", 0
msg1 BYTE "All job is done!"
dwordVal DWORD ?

.code
main PROC
    mov eax, yellow + (blue * 16)
    call SetTextColor
    call Clrscr

    mov esi, OFFSET arrayD
    mov ecx, LENGTHOF arrayD
    mov ebx, TYPE arrayD
    call DumpMem
    call Crlf

    mov edx, OFFSET msg1
    call WriteString
    call Crlf

    call WaitMsg

    exit
main ENDP
END main