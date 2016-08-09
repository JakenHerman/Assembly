    mov	edx, l
    mov	ecx, m
    mov bp, 10
a:
    mov	ebx, 1
    mov	eax, 4
    int	0x80
    dec bp
    cmp bp, 0
    jne a
    mov	eax, 1
    int	0x80
    m	db	'**********',0xa
    l	equ	$ - m
