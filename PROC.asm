.586
.model flat,stdcall
.stack 4096
DumpRegs PROTO

;这个程序是用来演示PROC的

include \masm32\include\kernel32.inc

.data

.code

includelib \masm32\lib\masm32.lib
includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib
includelib \masm32\lib\irvine32.lib



main PROC
    mov eax, 01h
    call sample
    call DumpRegs
    ret
main ENDP

sample PROC
    mov eax, 02h;
    ret
sample ENDP

END main


