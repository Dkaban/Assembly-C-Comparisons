.file   "sumForLoop.c"
        .text
.globl sumForLoop
        .type   sumForLoop, @function
sumForLoop:
.LFB12:
        .cfi_startproc
        movl    %edi, %edx
        movl    $0, %eax
        cmpl    %esi, %edi
        jge     .L3
.L6:
        addl    %edx, %eax
        addl    $1, %edx
        cmpl    %edx, %esi
        jg      .L6
.L3:
        rep; ret
        .cfi_endproc
.LFE12:
        .size   sumForLoop, .-sumForLoop
        .section        .rodata.str1.1,"aMS",@progbits,1
.LC0:
        .string " Sum: %d"
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
        call    sumForLoop
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
