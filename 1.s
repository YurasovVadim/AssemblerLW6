%include "syscall.mac"
SECTION .text
GLOBAL _start
EXTERN printhex
_start:
mov rbx, [B+8*0]
mov rax, [A+8*0]
mul rbx
mov [C+8*0], rax
mov [R+8*0], rdx
stepone 1, 0
stepone 2, 1
stepone 3, 2
stepone 4, 3
stepone 5, 4
stepone 6, 5
stepone 7, 6
%assign i 1
%rep 7
starttwo i
two_1 1
two_2 2
two_1 3
two_2 4
two_1 5
two_2 6
two_1 7
mov r9, [R+8*0]
mov [RD], r9
rero 1, 0
rero 2, 1
rero 3, 2
rero 4, 3
rero 5, 4
rero 6, 5
rero 7, 6
mov r9, [RD]
mov [R+8*7], r9
%assign i i+1
%endrep
%assign i 0
%rep 8
mov r9, [R+i*8]
mov [(C+64)+i*8], r9
%assign i i+1
%endrep
print A, 64
print B, 64
print C, 128
EXIT
SECTION .data


A dq 0xe839a7cf123914b4,0x8d0735c77f5598ec,0x8f1426c9271dd5f5,0xf9722eb5d5f5ba0c,0x049317deea4f358b,0x79d70b5f2524a8ee,0x76dbc861525e5756,0x0b8ccd403a9321b8
B dq 0x0346c1b58707a579,0xb22ddd16b145c219,0x363ee63545a1a1a0,0x3ac67b493b2c2b5c,0x099be66888ab9bb4,0xaa5edb50c91eb186,0xbea64c2f566234b1,0x9f024d99a9a5f53a	
C dq 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
RD dq 0x0
R dq 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0, 0x0
