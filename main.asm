extern printf

section .data
	NL db 0xa

section .bss

section .text
	global main
main:
	push rbp
	mov rbp, rsp

	; Fetch CLI arguments
	mov r13, rdi
	mov r14, rsi

	; Loop through display each argument
	mov r15, 0
	display_loop:
		mov rdi, [r14+r15*8]
		mov rax, 0
		call printf

		mov rdi, NL
		mov rax, 0
		call printf

		inc r15
		cmp r15, r13
		jne display_loop

	break:
		mov rax, 0
		leave
		ret
