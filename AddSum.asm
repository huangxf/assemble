.586
.model flat,stdcall
.stack 4096
DumpRegs PROTO

include \masm32\include\kernel32.inc


includelib \masm32\lib\masm32.lib
includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\irvine32.lib

.data
result DWORD ?

.code
main PROC

    ;MOV eax, 10000h
    ;add eax, 40000h
    ;sub eax, 20000h
    ;call DumpRegs

    mov edx, 1
    mov eax, 0
    mov ecx, 100
L1:
    add eax, edx
    inc edx
    loop L1


    call DumpRegs
 


    ret
main ENDP
END main