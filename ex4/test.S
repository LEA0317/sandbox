	.text
	.file	"test.cpp"
	.section	.rodata.cst8,"aM",@progbits,8
	.p2align	3
.LCPI0_0:
	.quad	4519690376349541460     # double 1.5E-6
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
	movl	%edi, %ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
	cmpl	$10, %ebx
#	jne	.LBB0_1
# BB#3:
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_4:                                # =>This Inner Loop Header: Depth=1
	#APP
	#NO_APP
	addl	$10, %eax
	cmpl	$10000000, %eax         # imm = 0x989680
	jl	.LBB0_4
	jmp	.LBB0_5
.LBB0_1:
	movl	$10000000, %eax         # imm = 0x989680
	.p2align	4, 0x90
.LBB0_2:                                # =>This Inner Loop Header: Depth=1
	#APP
	#NO_APP
	addl	$-1, %eax
	jne	.LBB0_2
.LBB0_5:
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r15
	movl	$_ZSt4cout, %edi
	movl	$.L.str, %esi
	movl	$9, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB0_22
# BB#6:
	subq	%r14, %r15
	vcvtsi2sdq	%r15, %xmm0, %xmm0
	vmovsd	%xmm0, 8(%rsp)          # 8-byte Spill
	cmpb	$0, 56(%rbx)
	je	.LBB0_8
# BB#7:
	movb	67(%rbx), %al
	jmp	.LBB0_9
.LBB0_8:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB0_9:
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movq	%rax, %rbx
	movl	$.L.str.1, %esi
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
	je	.LBB0_22
# BB#10:
	cmpb	$0, 56(%rbx)
	je	.LBB0_12
# BB#11:
	movb	67(%rbx), %al
	jmp	.LBB0_13
.LBB0_12:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB0_13:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movq	%rax, %r14
	movl	$.L.str.2, %esi
	movl	$12, %edx
	movq	%r14, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB0_22
# BB#14:
	cmpb	$0, 56(%rbx)
	je	.LBB0_16
# BB#15:
	movb	67(%rbx), %al
	jmp	.LBB0_17
.LBB0_16:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB0_17:
	movsbl	%al, %esi
	movq	%r14, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movq	%rax, %rbx
	movl	$.L.str.1, %esi
	movl	$4, %edx
	movq	%rbx, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	vmovsd	8(%rsp), %xmm0          # 8-byte Reload
                                        # xmm0 = mem[0],zero
	vmulsd	.LCPI0_0(%rip), %xmm0, %xmm0
	movq	%rbx, %rdi
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %r14
	movq	(%r14), %rax
	movq	-24(%rax), %rax
	movq	240(%r14,%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB0_22
# BB#18:
	cmpb	$0, 56(%rbx)
	je	.LBB0_20
# BB#19:
	movb	67(%rbx), %al
	jmp	.LBB0_21
.LBB0_20:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB0_21:
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
.LBB0_22:
	callq	_ZSt16__throw_bad_castv
.Lfunc_end0:
	.size	main, .Lfunc_end0-main
	.cfi_endproc

	.section	.text.startup,"ax",@progbits
	.p2align	4, 0x90
	.type	_GLOBAL__sub_I_test.cpp,@function
_GLOBAL__sub_I_test.cpp:                # @_GLOBAL__sub_I_test.cpp
	.cfi_startproc
# BB#0:
	pushq	%rax
.Ltmp7:
	.cfi_def_cfa_offset 16
	movl	$_ZStL8__ioinit, %edi
	callq	_ZNSt8ios_base4InitC1Ev
	movl	$_ZNSt8ios_base4InitD1Ev, %edi
	movl	$_ZStL8__ioinit, %esi
	movl	$__dso_handle, %edx
	popq	%rax
	jmp	__cxa_atexit            # TAILCALL
.Lfunc_end1:
	.size	_GLOBAL__sub_I_test.cpp, .Lfunc_end1-_GLOBAL__sub_I_test.cpp
	.cfi_endproc

	.type	_ZStL8__ioinit,@object  # @_ZStL8__ioinit
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"elapsed: "
	.size	.L.str, 10

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"    "
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"throughput: "
	.size	.L.str.2, 13

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_test.cpp

	.ident	"clang version 3.9.1 (tags/RELEASE_391/final)"
	.section	".note.GNU-stack","",@progbits
