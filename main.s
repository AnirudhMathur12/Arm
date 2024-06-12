; vim: set filetype=masm :
.global _main
.align 4
_main:
    mov x3, 
    adr x1, newline
    mov x2, #1
    b exit

printInt:
    mov x4, #10
    mov x7, #0

printInt_loop:
    udiv x5, x3, x4
    msub x6, x5, x4, x3
    add x6, x6, #48
    strb w6, [sp, x7]
    add x7, x7, #1
    cmp x5, #0
    b.eq printInt_spit
    mov x3, x5
    b printInt_loop

printInt_spit:
    mov x10, x30

printInt_spitLoop:
    add x9, sp, x7
    mov x1, x9
    mov x2, #1
    bl print
    sub x7, x7, #1
    cmp x7, #-1
    b.ne printInt_spitLoop

printInt_end:
    mov x30, x10
    ret

print:
    mov x0, #0
    mov x16, #4
    svc 0
    ret

exit:
    mov x0, #0
    mov x16, #1
    svc 0

newline:
    .ascii "\n"
