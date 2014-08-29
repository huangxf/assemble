TITLE Reversin a String

include \masm32\include\Irvine32.inc

includelib \masm32\lib\Irvine32.lib
includelib \masm32\lib\user32.lib
includelib \masm32\lib\kernel32.lib

.data
aName BYTE "This a a string!", 0
nameSize = ($ - aName) - 1

.code
main PROC
mov ecx, nameSize
mov esi, 0

L1: movzx eax, aName[esi]
    push eax
    inc esi
    loop L1

    mov ecx, nameSize
    mov esi, 0

L2: pop eax
    mov aName[esi], al
    inc esi
    loop L2

mov edx, OFFSET aName
call WriteString
call Crlf
exit

main ENDP
END main