	.text
	.file	"test.cpp"
	.globl	main
	.p2align	4, 0x90
	.type	main,@function
main:                                   # @main
	.cfi_startproc
# BB#0:
	pushq	%rbp
.Ltmp0:
	.cfi_def_cfa_offset 16
	pushq	%r15
.Ltmp1:
	.cfi_def_cfa_offset 24
	pushq	%r14
.Ltmp2:
	.cfi_def_cfa_offset 32
	pushq	%rbx
.Ltmp3:
	.cfi_def_cfa_offset 40
	pushq	%rax
.Ltmp4:
	.cfi_def_cfa_offset 48
.Ltmp5:
	.cfi_offset %rbx, -40
.Ltmp6:
	.cfi_offset %r14, -32
.Ltmp7:
	.cfi_offset %r15, -24
.Ltmp8:
	.cfi_offset %rbp, -16
	xorl	%ebx, %ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r14
	.p2align	4, 0x90
.LBB0_1:                                # =>This Inner Loop Header: Depth=1
	movl	_ZZ4mainE1b(%rbx), %eax
	movl	%eax, _ZZ4mainE1a(%rbx)
	#APP
	#NO_APP
	addq	$4, %rbx
	cmpq	$40000000, %rbx         # imm = 0x2625A00
	jne	.LBB0_1
# BB#2:
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %rbp
	movl	$_ZSt4cout, %edi
	movl	$.L.str, %esi
	movl	$17, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbx
	testq	%rbx, %rbx
	je	.LBB0_21
# BB#3:
	subq	%r14, %rbp
	vcvtsi2sdq	%rbp, %xmm0, %xmm0
	vmovsd	%xmm0, (%rsp)           # 8-byte Spill
	cmpb	$0, 56(%rbx)
	je	.LBB0_5
# BB#4:
	movb	67(%rbx), %al
	jmp	.LBB0_6
.LBB0_5:
	movq	%rbx, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbx), %rax
	movl	$10, %esi
	movq	%rbx, %rdi
	callq	*48(%rax)
.LBB0_6:
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
	vmovsd	(%rsp), %xmm0           # 8-byte Reload
                                        # xmm0 = mem[0],zero
	callq	_ZNSo9_M_insertIdEERSoT_
	movq	%rax, %rbx
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB0_21
# BB#7:
	cmpb	$0, 56(%rbp)
	je	.LBB0_9
# BB#8:
	movb	67(%rbp), %al
	jmp	.LBB0_10
.LBB0_9:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	*48(%rax)
.LBB0_10:
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movl	_ZZ4mainE1a(%rip), %r14d
	xorl	%ebx, %ebx
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %r15
	xorl	%eax, %eax
	.p2align	4, 0x90
.LBB0_11:                               # =>This Inner Loop Header: Depth=1
	movl	%eax, _ZZ4mainE1a(%rbx)
	movl	_ZZ4mainE1b+4(%rbx), %eax
	#APP
	#NO_APP
	addq	$4, %rbx
	cmpq	$39999996, %rbx         # imm = 0x26259FC
	jne	.LBB0_11
# BB#12:
	movl	$39999996, %eax         # imm = 0x26259FC
	movl	$0, _ZZ4mainE1a(%rax)
	callq	_ZNSt6chrono3_V212system_clock3nowEv
	movq	%rax, %rbx
	movl	$_ZSt4cout, %edi
	movl	$.L.str.2, %esi
	movl	$24, %edx
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	_ZSt4cout(%rip), %rax
	movq	-24(%rax), %rax
	movq	_ZSt4cout+240(%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB0_21
# BB#13:
	subq	%r15, %rbx
	cmpb	$0, 56(%rbp)
	je	.LBB0_15
# BB#14:
	movb	67(%rbp), %al
	jmp	.LBB0_16
.LBB0_15:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	*48(%rax)
.LBB0_16:
	movsbl	%al, %esi
	movl	$_ZSt4cout, %edi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	movq	%rax, %rbp
	movl	$.L.str.1, %esi
	movl	$4, %edx
	movq	%rbp, %rdi
	callq	_ZSt16__ostream_insertIcSt11char_traitsIcEERSt13basic_ostreamIT_T0_ES6_PKS3_l
	movq	%rbp, %rdi
	movq	%rbx, %rsi
	callq	_ZNSo9_M_insertIlEERSoT_
	movq	%rax, %rbx
	movq	(%rbx), %rax
	movq	-24(%rax), %rax
	movq	240(%rbx,%rax), %rbp
	testq	%rbp, %rbp
	je	.LBB0_21
# BB#17:
	cmpb	$0, 56(%rbp)
	je	.LBB0_19
# BB#18:
	movb	67(%rbp), %al
	jmp	.LBB0_20
.LBB0_19:
	movq	%rbp, %rdi
	callq	_ZNKSt5ctypeIcE13_M_widen_initEv
	movq	(%rbp), %rax
	movl	$10, %esi
	movq	%rbp, %rdi
	callq	*48(%rax)
.LBB0_20:
	movsbl	%al, %esi
	movq	%rbx, %rdi
	callq	_ZNSo3putEc
	movq	%rax, %rdi
	callq	_ZNSo5flushEv
	addl	_ZZ4mainE1a(%rip), %r14d
	movl	%r14d, %eax
	addq	$8, %rsp
	popq	%rbx
	popq	%r14
	popq	%r15
	popq	%rbp
	retq
.LBB0_21:
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
.Ltmp9:
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
	.type	_ZZ4mainE1a,@object     # @_ZZ4mainE1a
	.local	_ZZ4mainE1a
	.comm	_ZZ4mainE1a,40000000,16
	.type	_ZZ4mainE1b,@object     # @_ZZ4mainE1b
	.section	.rodata,"a",@progbits
	.p2align	4
_ZZ4mainE1b:
	.zero	40000000
	.size	_ZZ4mainE1b, 40000000

	.type	.L.str,@object          # @.str
	.section	.rodata.str1.1,"aMS",@progbits,1
.L.str:
	.asciz	"elapsed(normal): "
	.size	.L.str, 18

	.type	.L.str.1,@object        # @.str.1
.L.str.1:
	.asciz	"    "
	.size	.L.str.1, 5

	.type	.L.str.2,@object        # @.str.2
.L.str.2:
	.asciz	"elapsed(classical swp): "
	.size	.L.str.2, 25

	.section	.init_array,"aw",@init_array
	.p2align	3
	.quad	_GLOBAL__sub_I_test.cpp

	.ident	"clang version 3.9.1 (tags/RELEASE_391/final)"
	.section	".note.GNU-stack","",@progbits
