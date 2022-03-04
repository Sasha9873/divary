%include "st_io.inc"
global _start
section .data
a db 11
b dw 27
c db 22
d dw 66
section .text
_start:
mov eax, 0
movzx ax, [a]
mov [b], ax
UNSINT eax
PUTCHAR ' '
movsx ax, [c]
mov [d], ax
cwde
SIGNINT eax
PUTCHAR 0x0A
FINISH