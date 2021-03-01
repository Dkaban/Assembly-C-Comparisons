.file	"unrolledLoop.c"
	.text
	.section	.rodata.str1.1,"aMS",@progbits,1
.LC0:
	.string	"Sum: %d"
	.text
	.globl	main
	.type	main, @function
main:
.LFB11:
	.cfi_startproc
	subq	$216, %rsp
	.cfi_def_cfa_offset 224
	movq	%rsp, %rdx
	movl	$5, %eax
.L2:
	movl	%eax, (%rdx)
	addl	$1, %eax
	addq	$4, %rdx
	cmpl	$55, %eax
	jne	.L2
	movl	4(%rsp), %esi
	addl	(%rsp), %esi
	addl	8(%rsp), %esi
	addl	12(%rsp), %esi
	addl	16(%rsp), %esi
	addl	20(%rsp), %esi
	addl	24(%rsp), %esi
	addl	28(%rsp), %esi
	addl	32(%rsp), %esi
	addl	36(%rsp), %esi
	addl	40(%rsp), %esi
	addl	44(%rsp), %esi
	addl	48(%rsp), %esi
	addl	52(%rsp), %esi
	addl	56(%rsp), %esi
	addl	60(%rsp), %esi
	addl	64(%rsp), %esi
	addl	68(%rsp), %esi
	addl	72(%rsp), %esi
	addl	76(%rsp), %esi
	addl	80(%rsp), %esi
	addl	84(%rsp), %esi
	addl	88(%rsp), %esi
	addl	92(%rsp), %esi
	addl	96(%rsp), %esi
	addl	100(%rsp), %esi
	addl	104(%rsp), %esi
	addl	108(%rsp), %esi
	addl	112(%rsp), %esi
	addl	116(%rsp), %esi
	addl	120(%rsp), %esi
	addl	124(%rsp), %esi
	addl	128(%rsp), %esi
	addl	132(%rsp), %esi
	addl	136(%rsp), %esi
	addl	140(%rsp), %esi
	addl	144(%rsp), %esi
	addl	148(%rsp), %esi
	addl	152(%rsp), %esi
	addl	156(%rsp), %esi
	addl	160(%rsp), %esi
	addl	164(%rsp), %esi
	addl	168(%rsp), %esi
	addl	172(%rsp), %esi
	addl	176(%rsp), %esi
	addl	180(%rsp), %esi
	addl	184(%rsp), %esi
	addl	188(%rsp), %esi
	addl	192(%rsp), %esi
	addl	196(%rsp), %esi
	leaq	.LC0(%rip), %rdi
	movl	$0, %eax
	call	printf@PLT
	movl	$0, %eax
	addq	$216, %rsp
	.cfi_def_cfa_offset 8
	ret
	.cfi_endproc
.LFE11:
	.size	main, .-main
	.ident	"GCC: (Debian 8.3.0-6) 8.3.0"
	.section	.note.GNU-stack,"",@progbits
