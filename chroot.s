BITS 64

global _main

section .rodata

	file db "TOZ.txt"

section .text

_main:
	mov rax, 161
	mov rdi, file
	syscall
	jmp _exit

_exit:
	mov rax, 0x3C
	mov rdi, 0
	syscall
