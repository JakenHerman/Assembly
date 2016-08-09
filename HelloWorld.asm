mov	edx, l
mov	ecx, m
mov	ebx, 1
mov	eax, 4
int	0x80
mov	eax, 1
int	0x80
m	db	'Hello, world!',0xa
l	equ	$ - m
