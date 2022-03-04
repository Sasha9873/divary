%include "st_io.inc"
global _start
section .data
x db 2
a db 7
section .text
_start:
mov al, [x]
imul byte [x]
mov cx, ax
mov ax, 0
mov al, [x]
cbw
add ax, 10
imul cx
neg ax
add ax, 5
adc dx, 0
mov cx, ax
mov al, a
cbw
mov bx, ax
mov ax, cx
idiv bx
cwd
SIGNINT eax
mov ax, dx
cwd
SIGNINT eax
FINISH