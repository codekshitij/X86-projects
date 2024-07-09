section .data
    msg db 'Hello, Assembly!', 0

section .text
    global _start

_start:
    ; write message to stdout
    mov eax, 4          ; system call number (sys_write)
    mov ebx, 1          ; file descriptor (stdout)
    mov ecx, msg        ; message to write
    mov edx, 15         ; message length
    int 0x80            ; call kernel

    ; exit program
    mov eax, 1          ; system call number (sys_exit)
    xor ebx, ebx        ; exit code 0
    int 0x80            ; call kernel
