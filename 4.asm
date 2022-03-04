%include "st_io.inc"
global _start
section .data
a dd 2147483640
b dd 4294967293
section .text
_start:
mov ah, byte [a]
inc ah
mov byte [a], ah
mov ah, byte [a + 1]
adc ah, 0
mov byte [a + 1], ah
mov ah, byte [a + 2]
adc ah, 0
mov byte [a + 2], ah
mov ah, byte [a + 3]
adc ah, 0
mov byte [a + 3], ah
SIGNINT [a]
PUTCHAR 0x0A
;
mov ah, byte [b]
inc ah
mov byte [b], ah
mov ah, byte [b + 1]
adc ah, 0
mov byte [b + 1], ah
mov ah, byte [b + 2]
adc ah, 0
mov byte [b + 2], ah
mov ah, byte [b + 3]
adc ah, 0
mov byte [b + 3], ah
UNSINT [b]
FINISH