       .file   "sumDoWhileLoop.c"
        .text
.globl sumDoWhileLoop
        .type   sumDoWhileLoop, @function
sumDoWhileLoop:
.LFB12:
        .cfi_startproc
        movl    $0, %eax
.L2:
        addl    %edi, %eax
        addl    $1, %edi
        cmpl    %esi, %edi
        jle     .L2
        rep; ret
        .cfi_endproc
.LFE12:
        .size   sumDoWhileLoop, .-sumDoWhileLoop
        .section        .rodata.str1.1,"aMS",@progbits,1
.LC0:
        .string "Sum: %d"
        .text
.globl main
        .type   main, @function
main:
.LFB11:
        .cfi_startproc
        subq    $8, %rsp
        .cfi_def_cfa_offset 16
        movl    $10, %esi
        movl    $3, %edi
        call    sumDoWhileLoop
        movl    %eax, %esi
        movl    $.LC0, %edi
        movl    $0, %eax
        call    printf
        movl    $0, %eax
        addq    $8, %rsp
        .cfi_def_cfa_offset 8
        ret
        .cfi_endproc
.LFE11:
        .size   main, .-main
        .ident  "GCC: (GNU) 4.4.7 20120313 (Red Hat 4.4.7-23)"
        .section        .note.GNU-stack,"",@progbits
