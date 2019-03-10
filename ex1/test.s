	.text
	.file	"test.cpp"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_0:
	.quad	4743155517113761792     # double 1.28E+9
	.text
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%r15
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r14
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%rbx
.Ltmp2:
	.cfi_def_cfa_offset 32
	subq	$16, %rsp
.Ltmp3:
	.cfi_def_cfa_offset 48
.Ltmp4:
	.cfi_offset %rbx, -32
.Ltmp5:
	.cfi_offset %r14, -24
.Ltmp6:
	.cfi_offset %r15, -16
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
	movl	$.L__unnamed_1, %edi
	xorl	%esi, %esi
	movl	$.omp_outlined., %edx
	xorl	%eax, %eax
	callq	__kmpc_fork_call
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r15
	movl	$_ZSt4cout, %edi
	movl	$.L.str.1, %esi
	movl	$9, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB0_17
# BB#1:
	subq	%r14, %r15
	vcvtsi2sdq	%r15, %xmm0, %xmm0
	vmovsd	%xmm0, 8(%rsp)          # 8-byte Spill
	cmpb	$0, 56(%rbx)
	je	.LBB0_3
# BB#2:
	movb	67(%rbx), %al
	jmp	.LBB0_4
.LBB0_3:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB0_4:
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movq	%rax, %rbx
	movl	$.L.str.2, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbx, %rdi
	vmovsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r14
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB0_17
# BB#5:
	cmpb	$0, 56(%rbx)
	je	.LBB0_7
# BB#6:
	movb	67(%rbx), %al
	jmp	.LBB0_8
.LBB0_7:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB0_8:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movq	%rax, %r14
	movl	$.L.str.3, %esi
	movl	$8, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB0_17
# BB#9:
	cmpb	$0, 56(%rbx)
	je	.LBB0_11
# BB#10:
	movb	67(%rbx), %al
	jmp	.LBB0_12
.LBB0_11:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB0_12:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movq	%rax, %rbx
	movl	$.L.str.2, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	vmovsd	.LCPI0_0(%rip), %xmm0   # xmm0 = mem[0],zero
	vdivsd	8(%rsp), %xmm0, %xmm0   # 8-byte Folded Reload
	movq	%rbx, %rdi
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r14
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB0_17
# BB#13:
	cmpb	$0, 56(%rbx)
	je	.LBB0_15
# BB#14:
	movb	67(%rbx), %al
	jmp	.LBB0_16
.LBB0_15:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB0_16:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	xorl	%eax, %eax
	addq	$16, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	retq
.LBB0_17:
	callq	_ZSt16__throw_bad_castv
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.p2align	4, 0x90
	.type	.omp_outlined.,@function
.omp_outlined.:                         # @.omp_outlined.
	.cfi_startproc
# BB#0:
	pushq	%rbx
.Ltmp7:
	.cfi_def_cfa_offset 16
	subq	$16, %rsp
.Ltmp8:
	.cfi_def_cfa_offset 32
.Ltmp9:
	.cfi_offset %rbx, -16
	movl	$0, 4(%rsp)
	movl	$9999999, (%rsp)        # imm = 0x98967F
	movl	$1, 12(%rsp)
	movl	$0, 8(%rsp)
	movl	(%rdi), %ebx
	subq	$8, %rsp
.Ltmp10:
	.cfi_adjust_cfa_offset 8
	leaq	20(%rsp), %rax
	leaq	16(%rsp), %rcx
	leaq	12(%rsp), %r8
	leaq	8(%rsp), %r9
	movl	$.L__unnamed_1, %edi
	movl	$34, %edx
	movl	%ebx, %esi
	pushq	$1
.Ltmp11:
	.cfi_adjust_cfa_offset 8
	pushq	$1
.Ltmp12:
	.cfi_adjust_cfa_offset 8
	pushq	%rax
.Ltmp13:
	.cfi_adjust_cfa_offset 8
	callq	__kmpc_for_static_init_4
	addq	$32, %rsp
.Ltmp14:
	.cfi_adjust_cfa_offset -32
	movl	(%rsp), %eax
	cmpl	$9999999, %eax          # imm = 0x98967F
	movl	$9999999, %ecx          # imm = 0x98967F
	cmovlel	%eax, %ecx
	movl	%ecx, (%rsp)
	movl	4(%rsp), %eax
	cmpl	%ecx, %eax
	jg	.LBB1_3
# BB#1:
	addl	$-1, %eax
	.p2align	4, 0x90
.LBB1_2:                                # =>This Inner Loop Header: Depth=1
	#APP
	vfmadd213pd	%ymm0, %ymm0, %ymm0
	#NO_APP
	#APP
	vfmadd213pd	%ymm1, %ymm1, %ymm1
	#NO_APP
	#APP
	vfmadd213pd	%ymm2, %ymm2, %ymm2
	#NO_APP
	#APP
	vfmadd213pd	%ymm3, %ymm3, %ymm3
	#NO_APP
	#APP
	vfmadd213pd	%ymm4, %ymm4, %ymm4
	#NO_APP
	#APP
	vfmadd213pd	%ymm5, %ymm5, %ymm5
	#NO_APP
	#APP
	vfmadd213pd	%ymm6, %ymm6, %ymm6
	#NO_APP
	#APP
	vfmadd213pd	%ymm7, %ymm7, %ymm7
	#NO_APP
	#APP
	vfmadd213pd	%ymm0, %ymm0, %ymm0
	#NO_APP
	#APP
	vfmadd213pd	%ymm1, %ymm1, %ymm1
	#NO_APP
	#APP
	vfmadd213pd	%ymm2, %ymm2, %ymm2
	#NO_APP
	#APP
	vfmadd213pd	%ymm3, %ymm3, %ymm3
	#NO_APP
	#APP
	vfmadd213pd	%ymm4, %ymm4, %ymm4
	#NO_APP
	#APP
	vfmadd213pd	%ymm5, %ymm5, %ymm5
	#NO_APP
	#APP
	vfmadd213pd	%ymm6, %ymm6, %ymm6
	#NO_APP
	#APP
	vfmadd213pd	%ymm7, %ymm7, %ymm7
	#NO_APP
	addl	$1, %eax
	cmpl	(%rsp), %eax
	jl	.LBB1_2
.LBB1_3:
	movl	$.L__unnamed_1, %edi
	movl	%ebx, %esi
	callq	__kmpc_for_static_fini
	addq	$16, %rsp
	popq	%rbx
	retq
.Lfunc_end1:
	.size	.omp_outlined., .Lfunc_end1-.omp_outlined.
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90
	.type	_GLOBAL__sub_I_test.cpp,@function
_GLOBAL__sub_I_test.cpp:                # @_GLOBAL__sub_I_test.cpp
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp15:
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	jmp	__cxa_atexit            # TAILCALL
.Lfunc_end2:
	.size	_GLOBAL__sub_I_test.cpp, .Lfunc_end2-_GLOBAL__sub_I_test.cpp
	.cfi_endproc

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	";unknown;unknown;0;0;;"
	.size	.L.str, 23

	.type	.L__unnamed_1,@object   # @0
	.section	.rodata,"a",@progbits
	.p2align	3
.L__unnamed_1:
	.long	0                       # 0x0
	.long	2                       # 0x2
	.long	0                       # 0x0
	.long	0                       # 0x0
	.quad	.L.str
	.size	.L__unnamed_1, 24

	.type	.L.str.1,@object        # @.str.1
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str.1:
	.asciz	"elapsed: "
	.size	.L.str.1, 10

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"    "
	.size	.L.str.2, 5

	.type	.L.str.3,@object        # @.str.3
.L.str.3:
	.asciz	"GFLOPS: "
	.size	.L.str.3, 9

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_test.cpp

	.ident	"clang version 3.9.1 (tags/RELEASE_391/final)"
	.section	".note.GNU-stack","",@progbits
