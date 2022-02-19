[org 0x7c00]

; 设置屏幕模式为文本模式，清除屏幕
mov ax, 3
int 0x10

; 初始化段寄存器
mov ax, 0
mov ds, ax
mov es, ax
mov ss, ax
mov sp, 0x7c00

mov ax, 0xb800
mov ds,ax
mov byte [0], 'H'
mov byte [2], 'E'
mov byte [4], 'L'
mov byte [6], 'L'
mov byte [8], 'O'
mov byte [10], ','
mov byte [12], 'L'
mov byte [14], 'E'
mov byte [16], 'W'
mov byte [18], 'I'
mov byte [20], 'S'
mov byte [22], 'S'
mov byte [24], 'E'
mov byte [26], 'N'
jmp $

times 510 - ($ - $$) db 0

db 0x55, 0xaa