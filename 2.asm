%include "st_io.inc"
global _start
section .data
xp dd 9
yp dd 6
zp dd -3
section .text
_start:
mov edi, [xp]     			 ; (1)
mov edx, [yp]   			 ; (2)
mov ecx, [zp]    			 ; (3)
mov ebx, dword [edx]         ; (4)
mov esi, dword [ecx]         ; (5)
mov eax, dword [edi]         ; (6)
mov dword [edx], eax         ; (7)
mov dword [ecx], ebx         ; (8)
mov dword [edi], esi         ; (9)
SIGNINT [edx]
SIGNINT [ecx]
SIGNINT [edi]
FINISH