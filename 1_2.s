	.file	"1.c"
	.text
	.p2align 4
	.def	printf;	.scl	3;	.type	32;	.endef
	.seh_proc	printf
printf:
	pushq	%r12
	.seh_pushreg	%r12
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	leaq	88(%rsp), %rbx
	movq	%rdx, 88(%rsp)
	movq	%rcx, %r12
	movl	$1, %ecx
	movq	%r8, 96(%rsp)
	movq	%r9, 104(%rsp)
	movq	%rbx, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rbx, %r8
	movq	%r12, %rdx
	movq	%rax, %rcx
	call	__mingw_vfprintf
	addq	$56, %rsp
	popq	%rbx
	popq	%r12
	ret
	.seh_endproc
	.section .rdata,"dr"
.LC0:
	.ascii "%u\0"
	.text
	.p2align 4
	.def	scanf.constprop.0;	.scl	3;	.type	32;	.endef
	.seh_proc	scanf.constprop.0
scanf.constprop.0:
	pushq	%rbx
	.seh_pushreg	%rbx
	subq	$48, %rsp
	.seh_stackalloc	48
	.seh_endprologue
	xorl	%ecx, %ecx
	leaq	72(%rsp), %rbx
	movq	%rdx, 72(%rsp)
	movq	%r8, 80(%rsp)
	movq	%r9, 88(%rsp)
	movq	%rbx, 40(%rsp)
	call	*__imp___acrt_iob_func(%rip)
	movq	%rbx, %r8
	leaq	.LC0(%rip), %rdx
	movq	%rax, %rcx
	call	__mingw_vfscanf
	addq	$48, %rsp
	popq	%rbx
	ret
	.seh_endproc
	.p2align 4
	.globl	factorial
	.def	factorial;	.scl	2;	.type	32;	.endef
	.seh_proc	factorial
factorial:
	.seh_endprologue
	movl	$1, %r8d
	movl	%ecx, %eax
	testl	%ecx, %ecx
	je	.L4
	.p2align 4,,10
	.p2align 3
.L7:
	imulq	%rax, %r8
	subq	$1, %rax
	jne	.L7
.L4:
	movq	%r8, %rax
	ret
	.seh_endproc
	.def	__main;	.scl	2;	.type	32;	.endef
	.section .rdata,"dr"
	.align 8
.LC1:
	.ascii "\320\222\320\262\320\265\320\264\320\270\321\202\320\265 \321\207\320\270\321\201\320\273\320\276 \320\264\320\273\321\217 \320\262\321\213\321\207\320\270\321\201\320\273\320\265\320\275\320\270\321\217 \320\265\320\263\320\276 \321\204\320\260\320\272\321\202\320\276\321\200\320\270\320\260\320\273\320\260: \0"
	.align 8
.LC2:
	.ascii "\320\244\320\260\320\272\321\202\320\276\321\200\320\270\320\260\320\273 \321\207\320\270\321\201\320\273\320\260 %u \321\200\320\260\320\262\320\265\320\275 %llu\12\0"
	.section	.text.startup,"x"
	.p2align 4
	.globl	main
	.def	main;	.scl	2;	.type	32;	.endef
	.seh_proc	main
main:
	subq	$56, %rsp
	.seh_stackalloc	56
	.seh_endprologue
	call	__main
	leaq	.LC1(%rip), %rcx
	call	printf
	leaq	44(%rsp), %rdx
	leaq	.LC0(%rip), %rcx
	call	scanf.constprop.0
	movl	44(%rsp), %eax
	movl	$1, %r8d
	movq	%rax, %rdx
	testl	%eax, %eax
	je	.L14
	.p2align 4,,10
	.p2align 3
.L15:
	imulq	%rax, %r8
	subq	$1, %rax
	jne	.L15
.L14:
	leaq	.LC2(%rip), %rcx
	call	printf
	xorl	%eax, %eax
	addq	$56, %rsp
	ret
	.seh_endproc
	.ident	"GCC: (GNU) 11.3.0"
	.def	__mingw_vfprintf;	.scl	2;	.type	32;	.endef
	.def	__mingw_vfscanf;	.scl	2;	.type	32;	.endef
