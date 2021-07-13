section .data
	msg db "Hello, World", 0x0A ; 어셈블리어에서 0x0A과 10은 줄바꿈 이다.

section .text
	global _start

_start:
	mov rax, 1
	mov rdi, 1
	mov rsi, msg
	mov rdx, 12
	syscall
	
	mov rax, 60
	mov rdi, 0
	syscall
