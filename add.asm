  org 100h
;equates section
EOS	equ	'$'

section .data
msg     db  'Enter The First Digit: ', 13, 10, EOS
msg2    db  'Enter The Second Digit: ', 13, 10, EOS
msg1    db  ' is the sum', EOS
newline db 13, 10, EOS
c2      db  ' ', EOS

section .text
; display question
  mov   ah, 9              ; display the first message
  mov   dx, msg
  int   21h

; get the integers from the user
  mov   ah, 1             ; read char function
  int   21h               ; carry out read char
  sub   al, 30h           ; subtract 1st digit
  mov   bl, al            ; store 1st digit in bl

  mov   ah, 9
  mov   dx, newline		    ; create a new line
  int   21h

  mov   ah, 9             ; display second prompt fnc
  mov   dx, msg2		      ; load second prompt
  int   21h				        ; carry out the func

  mov   ah, 1             ; read char function
  int   21h               ; carry out read char
  sub   al, 30h           ; subtract 1st digit
  mov   cl, al

  mov   ah, 9
  mov   dx, newline		    ; create a new line
  int   21h

  mov   dl, bl            ; preparing for addition
  add   dl, cl            ; addition
  add   dl, '0'

  mov ah, 2h		          ; print the sum
  int 21h

; go to next line
  mov   ah, 9
  mov   dx, msg1
  int   21h               ; display result message

EXIT:
; exit to DOS
  mov   ah, 4ch           ; DOS exit function
  mov   al, 0             ;Return exit code value
  int   21h               ;Call DOS.  Terminate program
