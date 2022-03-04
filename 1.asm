%include "st_io.inc"
global _start
section .data
x dd 25
y dd 25
t dd 19
section .text
_start:
mov eax, t
mov edx, [eax]
mov [x], edx
SIGNINT [x]
PUTCHAR ' '
SIGNINT [eax]
PUTCHAR 0x0A
mov eax, 1
mov ebx, 0
int 80h
