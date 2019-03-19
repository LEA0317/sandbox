	.text
	.file	"test.cpp"
	.section	.rodata.cst4,"aM",@progbits,4
	.p2align	2
.LCPI0_0:
	.long	3225419776              # float -3
.LCPI0_1:
	.long	3204448256              # float -0.5
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp0:
	.cfi_def_cfa_offset 16
	vcvtsi2ssl	%edi, %xmm0, %xmm0
	movb	$1, %al
	testb	%al, %al
	je	.LBB0_2
# BB#1:
	vrsqrtss	%xmm0, %xmm0, %xmm1
	vmulss	%xmm1, %xmm0, %xmm2
	vfmadd213ss	.LCPI0_0(%rip), %xmm2, %xmm1
	vmulss	.LCPI0_1(%rip), %xmm2, %xmm2
	vmulss	%xmm1, %xmm2, %xmm1
	vxorps	%xmm2, %xmm2, %xmm2
	vcmpeqss	%xmm2, %xmm0, %xmm0
	vandnps	%xmm1, %xmm0, %xmm0
	jmp	.LBB0_3
.LBB0_2:
	callq	sqrt
.LBB0_3:
	vcvttss2si	%xmm0, %eax
	popq	%rcx
	retq
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc


	.ident	"clang version 3.9.1 (tags/RELEASE_391/final)"
	.section	".note.GNU-stack","",@progbits
