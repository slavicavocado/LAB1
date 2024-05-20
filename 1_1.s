	.file	"1.c"
	.text
	.def	scanf;	.scl	3;	.type	32;	.endef
	.seh_proc	scanf
scanf:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, 88(%rsp)
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	leaq	88(%rsp), %rsi
	movq	%rsi, 40(%rsp)
	movl	$0, %ecx
	call	*__imp___acrt_iob_func(%rip)
	movq	%rax, %rcx
	movq	%rsi, %r8
	movq	%rbx, %rdx
	call	__mingw_vfscanf
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	pushq	%rsi
	.seh_pushreg	%rsi
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	movq	%rcx, %rbx
	movq	%rdx, 88(%rsp)
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	leaq	88(%rsp), %rsi
	movq	%rsi, 40(%rsp)
	movl	$1, %ecx
	call	*__imp___acrt_iob_func(%rip)
	movq	%rax, %rcx
	movq	%rsi, %r8
	movq	%rbx, %rdx
	call	__mingw_vfprintf
	addq	$56, %rsp
	popq	%rbx
	popq	%rsi
	ret
	.seh_endproc
	.globl	factorial
	.def	factorial;	.scl	2;	.type	32;	.endef
	.seh_proc	factorial
factorial:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$32, %rsp
	.seh_stackalloc	32
	.seh_endprologue
	movl	%ecx, %ebx
	movl	$1, %eax
	testl	%ecx, %ecx
	jne	.L6
.L3:
	addq	$32, %rsp
	popq	%rbx
	ret
.L6:
	leal	-1(%rcx), %ecx
	call	factorial
	movq	%rax, %rdx
	movl	%ebx, %eax
	imulq	%rdx, %rax
	jmp	.L3
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC0:
	.ascii "\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \321\207\320\270\321\201\320\273\320\276 \320\264\320\273\321\217 \320\262\321\213\321\207\320\270\321\201\320\273\320\265\320\275\320\270\321\217 \320\265\320\263\320\276 \321\204\320\260\320\272\321\202\320\276\321\200\320\270\320\260\320\273\320\260: \0"
.LC1:
	.ascii "%u\0"
	.align 8
.LC2:
	.ascii "\320\244\320\260\320\272\321\202\320\276\321\200\320\270\320\260\320\273 \321\207\320\270\321\201\320\273\320\260 %u \321\200\320\260\320\262\320\265\320\275 %llu\12\0"
	.text
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	call	__main
	leaq	.LC0(%rip), %rcx
	call	printf
	leaq	44(%rsp), %rdx
	leaq	.LC1(%rip), %rcx
	call	scanf
	movl	44(%rsp), %ebx
	movl	%ebx, %ecx
	call	factorial
	movq	%rax, %r8
	movl	%ebx, %edx
	leaq	.LC2(%rip), %rcx
	call	printf
	movl	$0, %eax
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 11.3.0"
	.def	__mingw_vfscanf;	.scl	2;	.type	32;	.endef
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
