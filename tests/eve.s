	.file	"ever_flow.cpp"
	.text
	.local	_ZStL8__ioinit
	.comm	_ZStL8__ioinit,1,1
	.section	.text._ZN7Thr_SLED2Ev,"axG",@progbits,_ZN7Thr_SLED5Ev,comdat
	.align 2
	.weak	_ZN7Thr_SLED2Ev
	.type	_ZN7Thr_SLED2Ev, @function
_ZN7Thr_SLED2Ev:
.LFB2088:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	addq	$48, %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	-8(%rbp), %rax
	addq	$24, %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2088:
	.size	_ZN7Thr_SLED2Ev, .-_ZN7Thr_SLED2Ev
	.weak	_ZN7Thr_SLED1Ev
	.set	_ZN7Thr_SLED1Ev,_ZN7Thr_SLED2Ev
	.text
	.globl	main
	.type	main, @function
main:
.LFB2086:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2086
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r15
	pushq	%r14
	pushq	%r13
	pushq	%r12
	pushq	%rbx
	subq	$280, %rsp
	.cfi_offset 15, -24
	.cfi_offset 14, -32
	.cfi_offset 13, -40
	.cfi_offset 12, -48
	.cfi_offset 3, -56
	movq	%fs:40, %rax
	movq	%rax, -56(%rbp)
	xorl	%eax, %eax
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
.LEHB0:
	call	_Z12rand_thr_slev@PLT
.LEHE0:
	pxor	%xmm0, %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	.LC1(%rip), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	.LC2(%rip), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	.LC3(%rip), %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	.LC4(%rip), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	.LC6(%rip), %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	.LC7(%rip), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	.LC8(%rip), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	.LC9(%rip), %xmm0
	movsd	%xmm0, -72(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, %r14
	movl	$10, %r15d
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	leaq	-256(%rbp), %rdx
	movq	%r14, %rsi
	movq	%r15, %rdi
	movq	%r14, %rcx
	movq	%r15, %rbx
	movq	%rbx, %rdi
	leaq	-320(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
.LEHB1:
	call	_ZNSt6vectorIdSaIdEEC1ESt16initializer_listIdERKS0_
.LEHE1:
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	movsd	.LC10(%rip), %xmm0
	movsd	%xmm0, -144(%rbp)
	movsd	.LC11(%rip), %xmm0
	movsd	%xmm0, -136(%rbp)
	movsd	.LC12(%rip), %xmm0
	movsd	%xmm0, -128(%rbp)
	movsd	.LC5(%rip), %xmm0
	movsd	%xmm0, -120(%rbp)
	movsd	.LC13(%rip), %xmm0
	movsd	%xmm0, -112(%rbp)
	movsd	.LC14(%rip), %xmm0
	movsd	%xmm0, -104(%rbp)
	movsd	.LC15(%rip), %xmm0
	movsd	%xmm0, -96(%rbp)
	movsd	.LC16(%rip), %xmm0
	movsd	%xmm0, -88(%rbp)
	movsd	.LC17(%rip), %xmm0
	movsd	%xmm0, -80(%rbp)
	movsd	.LC18(%rip), %xmm0
	movsd	%xmm0, -72(%rbp)
	leaq	-144(%rbp), %rax
	movq	%rax, %r12
	movl	$10, %r13d
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdEC1Ev
	leaq	-256(%rbp), %rdx
	movq	%r12, %rsi
	movq	%r13, %rdi
	movq	%r12, %rcx
	movq	%r13, %rbx
	movq	%rbx, %rdi
	leaq	-288(%rbp), %rax
	movq	%rdx, %rcx
	movq	%rdi, %rdx
	movq	%rax, %rdi
.LEHB2:
	call	_ZNSt6vectorIdSaIdEEC1ESt16initializer_listIdERKS0_
.LEHE2:
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	leaq	-256(%rbp), %rax
	leaq	-288(%rbp), %rdx
	leaq	-224(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB3:
	call	_Z13solve_thr_sleR7Thr_SLERSt6vectorIdSaIdEE@PLT
.LEHE3:
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	movl	$0, %ebx
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7Thr_SLED1Ev
	movl	%ebx, %eax
	movq	-56(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L9
	jmp	.L13
.L10:
	endbr64
	movq	%rax, %rbx
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L5
.L11:
	endbr64
	movq	%rax, %rbx
	leaq	-256(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	jmp	.L7
.L12:
	endbr64
	movq	%rax, %rbx
	leaq	-288(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L7:
	leaq	-320(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEED1Ev
.L5:
	leaq	-224(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN7Thr_SLED1Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB4:
	call	_Unwind_Resume@PLT
.LEHE4:
.L13:
	call	__stack_chk_fail@PLT
.L9:
	addq	$280, %rsp
	popq	%rbx
	popq	%r12
	popq	%r13
	popq	%r14
	popq	%r15
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2086:
	.globl	__gxx_personality_v0
	.section	.gcc_except_table,"a",@progbits
.LLSDA2086:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2086-.LLSDACSB2086
.LLSDACSB2086:
	.uleb128 .LEHB0-.LFB2086
	.uleb128 .LEHE0-.LEHB0
	.uleb128 0
	.uleb128 0
	.uleb128 .LEHB1-.LFB2086
	.uleb128 .LEHE1-.LEHB1
	.uleb128 .L10-.LFB2086
	.uleb128 0
	.uleb128 .LEHB2-.LFB2086
	.uleb128 .LEHE2-.LEHB2
	.uleb128 .L11-.LFB2086
	.uleb128 0
	.uleb128 .LEHB3-.LFB2086
	.uleb128 .LEHE3-.LEHB3
	.uleb128 .L12-.LFB2086
	.uleb128 0
	.uleb128 .LEHB4-.LFB2086
	.uleb128 .LEHE4-.LEHB4
	.uleb128 0
	.uleb128 0
.LLSDACSE2086:
	.text
	.size	main, .-main
	.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEED2Ev
	.type	_ZNSt6vectorIdSaIdEED2Ev, @function
_ZNSt6vectorIdSaIdEED2Ev:
.LFB2351:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2351
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	8(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2351:
	.section	.gcc_except_table
.LLSDA2351:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2351-.LLSDACSB2351
.LLSDACSB2351:
.LLSDACSE2351:
	.section	.text._ZNSt6vectorIdSaIdEED2Ev,"axG",@progbits,_ZNSt6vectorIdSaIdEED5Ev,comdat
	.size	_ZNSt6vectorIdSaIdEED2Ev, .-_ZNSt6vectorIdSaIdEED2Ev
	.weak	_ZNSt6vectorIdSaIdEED1Ev
	.set	_ZNSt6vectorIdSaIdEED1Ev,_ZNSt6vectorIdSaIdEED2Ev
	.section	.text._ZNSaIdEC2Ev,"axG",@progbits,_ZNSaIdEC5Ev,comdat
	.align 2
	.weak	_ZNSaIdEC2Ev
	.type	_ZNSaIdEC2Ev, @function
_ZNSaIdEC2Ev:
.LFB2354:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2354:
	.size	_ZNSaIdEC2Ev, .-_ZNSaIdEC2Ev
	.weak	_ZNSaIdEC1Ev
	.set	_ZNSaIdEC1Ev,_ZNSaIdEC2Ev
	.section	.text._ZNSaIdED2Ev,"axG",@progbits,_ZNSaIdED5Ev,comdat
	.align 2
	.weak	_ZNSaIdED2Ev
	.type	_ZNSaIdED2Ev, @function
_ZNSaIdED2Ev:
.LFB2357:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2357:
	.size	_ZNSaIdED2Ev, .-_ZNSaIdED2Ev
	.weak	_ZNSaIdED1Ev
	.set	_ZNSaIdED1Ev,_ZNSaIdED2Ev
	.section	.text._ZNSt6vectorIdSaIdEEC2ESt16initializer_listIdERKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5ESt16initializer_listIdERKS0_,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEEC2ESt16initializer_listIdERKS0_
	.type	_ZNSt6vectorIdSaIdEEC2ESt16initializer_listIdERKS0_, @function
_ZNSt6vectorIdSaIdEEC2ESt16initializer_listIdERKS0_:
.LFB2360:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2360
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, %rax
	movq	%rdx, %rsi
	movq	%rsi, %rdx
	movq	%rax, -64(%rbp)
	movq	%rdx, -56(%rbp)
	movq	%rcx, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-40(%rbp), %rax
	movq	-48(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIdE3endEv
	movq	%rax, %rbx
	leaq	-64(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIdE5beginEv
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rbx, %rdx
	movq	%rcx, %rsi
	movq	%rax, %rdi
.LEHB5:
	call	_ZNSt6vectorIdSaIdEE19_M_range_initializeIPKdEEvT_S5_St20forward_iterator_tag
.LEHE5:
	jmp	.L21
.L20:
	endbr64
	movq	%rax, %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEED2Ev
	movq	%rbx, %rax
	movq	%rax, %rdi
.LEHB6:
	call	_Unwind_Resume@PLT
.LEHE6:
.L21:
	movq	-24(%rbp), %rax
	subq	%fs:40, %rax
	je	.L19
	call	__stack_chk_fail@PLT
.L19:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2360:
	.section	.gcc_except_table
.LLSDA2360:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2360-.LLSDACSB2360
.LLSDACSB2360:
	.uleb128 .LEHB5-.LFB2360
	.uleb128 .LEHE5-.LEHB5
	.uleb128 .L20-.LFB2360
	.uleb128 0
	.uleb128 .LEHB6-.LFB2360
	.uleb128 .LEHE6-.LEHB6
	.uleb128 0
	.uleb128 0
.LLSDACSE2360:
	.section	.text._ZNSt6vectorIdSaIdEEC2ESt16initializer_listIdERKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEEC5ESt16initializer_listIdERKS0_,comdat
	.size	_ZNSt6vectorIdSaIdEEC2ESt16initializer_listIdERKS0_, .-_ZNSt6vectorIdSaIdEEC2ESt16initializer_listIdERKS0_
	.weak	_ZNSt6vectorIdSaIdEEC1ESt16initializer_listIdERKS0_
	.set	_ZNSt6vectorIdSaIdEEC1ESt16initializer_listIdERKS0_,_ZNSt6vectorIdSaIdEEC2ESt16initializer_listIdERKS0_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev, @function
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev:
.LFB2441:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2441:
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev, .-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD2Ev
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEED2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEED2Ev, @function
_ZNSt12_Vector_baseIdSaIdEED2Ev:
.LFB2443:
	.cfi_startproc
	.cfi_personality 0x9b,DW.ref.__gxx_personality_v0
	.cfi_lsda 0x1b,.LLSDA2443
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	16(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	%rdx, %rax
	subq	%rcx, %rax
	sarq	$3, %rax
	movq	%rax, %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implD1Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2443:
	.section	.gcc_except_table
.LLSDA2443:
	.byte	0xff
	.byte	0xff
	.byte	0x1
	.uleb128 .LLSDACSE2443-.LLSDACSB2443
.LLSDACSB2443:
.LLSDACSE2443:
	.section	.text._ZNSt12_Vector_baseIdSaIdEED2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEED5Ev,comdat
	.size	_ZNSt12_Vector_baseIdSaIdEED2Ev, .-_ZNSt12_Vector_baseIdSaIdEED2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEED1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEED1Ev,_ZNSt12_Vector_baseIdSaIdEED2Ev
	.section	.text._ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.type	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, @function
_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv:
.LFB2445:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2445:
	.size	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv, .-_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	.section	.text._ZSt8_DestroyIPddEvT_S1_RSaIT0_E,"axG",@progbits,_ZSt8_DestroyIPddEvT_S1_RSaIT0_E,comdat
	.weak	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	.type	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, @function
_ZSt8_DestroyIPddEvT_S1_RSaIT0_E:
.LFB2446:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8_DestroyIPdEvT_S1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2446:
	.size	_ZSt8_DestroyIPddEvT_S1_RSaIT0_E, .-_ZSt8_DestroyIPddEvT_S1_RSaIT0_E
	.section	.text._ZN9__gnu_cxx13new_allocatorIdEC2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdEC5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIdEC2Ev, @function
_ZN9__gnu_cxx13new_allocatorIdEC2Ev:
.LFB2448:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2448:
	.size	_ZN9__gnu_cxx13new_allocatorIdEC2Ev, .-_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIdEC1Ev,_ZN9__gnu_cxx13new_allocatorIdEC2Ev
	.section	.text._ZN9__gnu_cxx13new_allocatorIdED2Ev,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdED5Ev,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.type	_ZN9__gnu_cxx13new_allocatorIdED2Ev, @function
_ZN9__gnu_cxx13new_allocatorIdED2Ev:
.LFB2451:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2451:
	.size	_ZN9__gnu_cxx13new_allocatorIdED2Ev, .-_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.weak	_ZN9__gnu_cxx13new_allocatorIdED1Ev
	.set	_ZN9__gnu_cxx13new_allocatorIdED1Ev,_ZN9__gnu_cxx13new_allocatorIdED2Ev
	.section	.text._ZNSt12_Vector_baseIdSaIdEEC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEEC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_
	.type	_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_, @function
_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_:
.LFB2454:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2454:
	.size	_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_, .-_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_
	.weak	_ZNSt12_Vector_baseIdSaIdEEC1ERKS0_
	.set	_ZNSt12_Vector_baseIdSaIdEEC1ERKS0_,_ZNSt12_Vector_baseIdSaIdEEC2ERKS0_
	.section	.text._ZNKSt16initializer_listIdE5beginEv,"axG",@progbits,_ZNKSt16initializer_listIdE5beginEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIdE5beginEv
	.type	_ZNKSt16initializer_listIdE5beginEv, @function
_ZNKSt16initializer_listIdE5beginEv:
.LFB2456:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2456:
	.size	_ZNKSt16initializer_listIdE5beginEv, .-_ZNKSt16initializer_listIdE5beginEv
	.section	.text._ZNKSt16initializer_listIdE3endEv,"axG",@progbits,_ZNKSt16initializer_listIdE3endEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIdE3endEv
	.type	_ZNKSt16initializer_listIdE3endEv, @function
_ZNKSt16initializer_listIdE3endEv:
.LFB2457:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$24, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIdE5beginEv
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNKSt16initializer_listIdE4sizeEv
	salq	$3, %rax
	addq	%rbx, %rax
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2457:
	.size	_ZNKSt16initializer_listIdE3endEv, .-_ZNKSt16initializer_listIdE3endEv
	.section	.text._ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_,"axG",@progbits,_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_,comdat
	.weak	_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.type	_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_, @function
_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_:
.LFB2459:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	leaq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2459:
	.size	_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_, .-_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_
	.section	.text._ZNSt6vectorIdSaIdEE19_M_range_initializeIPKdEEvT_S5_St20forward_iterator_tag,"axG",@progbits,_ZNSt6vectorIdSaIdEE19_M_range_initializeIPKdEEvT_S5_St20forward_iterator_tag,comdat
	.align 2
	.weak	_ZNSt6vectorIdSaIdEE19_M_range_initializeIPKdEEvT_S5_St20forward_iterator_tag
	.type	_ZNSt6vectorIdSaIdEE19_M_range_initializeIPKdEEvT_S5_St20forward_iterator_tag, @function
_ZNSt6vectorIdSaIdEE19_M_range_initializeIPKdEEvT_S5_St20forward_iterator_tag:
.LFB2458:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$56, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%rdx, -56(%rbp)
	movq	-56(%rbp), %rdx
	movq	-48(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt8distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rbx
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rdx
	movq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	movq	%rax, %rsi
	movq	%rbx, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	movq	-40(%rbp), %rdx
	movq	%rax, (%rdx)
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-24(%rbp), %rax
	salq	$3, %rax
	addq	%rax, %rdx
	movq	-40(%rbp), %rax
	movq	%rdx, 16(%rax)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE19_M_get_Tp_allocatorEv
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	(%rax), %rdx
	movq	-56(%rbp), %rsi
	movq	-48(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E
	movq	-40(%rbp), %rdx
	movq	%rax, 8(%rdx)
	nop
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2458:
	.size	_ZNSt6vectorIdSaIdEE19_M_range_initializeIPKdEEvT_S5_St20forward_iterator_tag, .-_ZNSt6vectorIdSaIdEE19_M_range_initializeIPKdEEvT_S5_St20forward_iterator_tag
	.section	.text._ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	.type	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, @function
_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm:
.LFB2494:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L39
	movq	-8(%rbp), %rax
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
.L39:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2494:
	.size	_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm, .-_ZNSt12_Vector_baseIdSaIdEE13_M_deallocateEPdm
	.section	.text._ZSt8_DestroyIPdEvT_S1_,"axG",@progbits,_ZSt8_DestroyIPdEvT_S1_,comdat
	.weak	_ZSt8_DestroyIPdEvT_S1_
	.type	_ZSt8_DestroyIPdEvT_S1_, @function
_ZSt8_DestroyIPdEvT_S1_:
.LFB2495:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2495:
	.size	_ZSt8_DestroyIPdEvT_S1_, .-_ZSt8_DestroyIPdEvT_S1_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC5ERKS0_,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_
	.type	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, @function
_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_:
.LFB2498:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIdEC2ERKS_
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2498:
	.size	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_, .-_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_
	.weak	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_
	.set	_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC1ERKS0_,_ZNSt12_Vector_baseIdSaIdEE12_Vector_implC2ERKS0_
	.section	.text._ZNKSt16initializer_listIdE4sizeEv,"axG",@progbits,_ZNKSt16initializer_listIdE4sizeEv,comdat
	.align 2
	.weak	_ZNKSt16initializer_listIdE4sizeEv
	.type	_ZNKSt16initializer_listIdE4sizeEv, @function
_ZNKSt16initializer_listIdE4sizeEv:
.LFB2500:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	8(%rax), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2500:
	.size	_ZNKSt16initializer_listIdE4sizeEv, .-_ZNKSt16initializer_listIdE4sizeEv
	.section	.text._ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_,"axG",@progbits,_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_,comdat
	.weak	_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.type	_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_, @function
_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_:
.LFB2501:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2501:
	.size	_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_, .-_ZSt19__iterator_categoryIPKdENSt15iterator_traitsIT_E17iterator_categoryERKS3_
	.section	.text._ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,"axG",@progbits,_ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag,comdat
	.weak	_ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.type	_ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, @function
_ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag:
.LFB2502:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	subq	-8(%rbp), %rax
	sarq	$3, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2502:
	.size	_ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag, .-_ZSt10__distanceIPKdENSt15iterator_traitsIT_E15difference_typeES3_S3_St26random_access_iterator_tag
	.section	.rodata
	.align 8
.LC19:
	.string	"cannot create std::vector larger than max_size()"
	.section	.text._ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_,comdat
	.weak	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	.type	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, @function
_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_:
.LFB2503:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -40(%rbp)
	movq	%rsi, -48(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -24(%rbp)
	xorl	%eax, %eax
	movq	-48(%rbp), %rdx
	leaq	-25(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSaIdEC1ERKS_
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	cmpq	%rax, -40(%rbp)
	seta	%bl
	leaq	-25(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSaIdED1Ev
	testb	%bl, %bl
	je	.L49
	leaq	.LC19(%rip), %rax
	movq	%rax, %rdi
	call	_ZSt20__throw_length_errorPKc@PLT
.L49:
	movq	-40(%rbp), %rax
	movq	-24(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L51
	call	__stack_chk_fail@PLT
.L51:
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2503:
	.size	_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_, .-_ZNSt6vectorIdSaIdEE17_S_check_init_lenEmRKS0_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	.type	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, @function
_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm:
.LFB2504:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	cmpq	$0, -16(%rbp)
	je	.L53
	movq	-8(%rbp), %rax
	movq	-16(%rbp), %rdx
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
	jmp	.L55
.L53:
	movl	$0, %eax
.L55:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2504:
	.size	_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm, .-_ZNSt12_Vector_baseIdSaIdEE11_M_allocateEm
	.section	.text._ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E,"axG",@progbits,_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E,comdat
	.weak	_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E
	.type	_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E, @function
_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E:
.LFB2505:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	%rcx, -32(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt18uninitialized_copyIPKdPdET0_T_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2505:
	.size	_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E, .-_ZSt22__uninitialized_copy_aIPKdPddET0_T_S4_S3_RSaIT1_E
	.section	.text._ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
	.type	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, @function
_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm:
.LFB2547:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2547:
	.size	_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm, .-_ZNSt16allocator_traitsISaIdEE10deallocateERS0_Pdm
	.section	.text._ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,"axG",@progbits,_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_,comdat
	.weak	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.type	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, @function
_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_:
.LFB2548:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2548:
	.size	_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_, .-_ZNSt12_Destroy_auxILb1EE9__destroyIPdEEvT_S3_
	.section	.text._ZNSaIdEC2ERKS_,"axG",@progbits,_ZNSaIdEC5ERKS_,comdat
	.align 2
	.weak	_ZNSaIdEC2ERKS_
	.type	_ZNSaIdEC2ERKS_, @function
_ZNSaIdEC2ERKS_:
.LFB2550:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rdx
	movq	-8(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2550:
	.size	_ZNSaIdEC2ERKS_, .-_ZNSaIdEC2ERKS_
	.weak	_ZNSaIdEC1ERKS_
	.set	_ZNSaIdEC1ERKS_,_ZNSaIdEC2ERKS_
	.section	.text._ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev,"axG",@progbits,_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC5Ev,comdat
	.align 2
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.type	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, @function
_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev:
.LFB2553:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	$0, (%rax)
	movq	-8(%rbp), %rax
	movq	$0, 8(%rax)
	movq	-8(%rbp), %rax
	movq	$0, 16(%rax)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2553:
	.size	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev, .-_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.weak	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev
	.set	_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC1Ev,_ZNSt12_Vector_baseIdSaIdEE17_Vector_impl_dataC2Ev
	.section	.text._ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_,"axG",@progbits,_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_,comdat
	.weak	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	.type	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, @function
_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_:
.LFB2555:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -40(%rbp)
	movq	%fs:40, %rax
	movq	%rax, -8(%rbp)
	xorl	%eax, %eax
	movabsq	$1152921504606846975, %rax
	movq	%rax, -24(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
	movq	%rax, -16(%rbp)
	leaq	-16(%rbp), %rdx
	leaq	-24(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt3minImERKT_S2_S2_
	movq	(%rax), %rax
	movq	-8(%rbp), %rdx
	subq	%fs:40, %rdx
	je	.L64
	call	__stack_chk_fail@PLT
.L64:
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2555:
	.size	_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_, .-_ZNSt6vectorIdSaIdEE11_S_max_sizeERKS0_
	.section	.text._ZNSt16allocator_traitsISaIdEE8allocateERS0_m,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE8allocateERS0_m,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
	.type	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, @function
_ZNSt16allocator_traitsISaIdEE8allocateERS0_m:
.LFB2556:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movl	$0, %edx
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2556:
	.size	_ZNSt16allocator_traitsISaIdEE8allocateERS0_m, .-_ZNSt16allocator_traitsISaIdEE8allocateERS0_m
	.section	.text._ZSt18uninitialized_copyIPKdPdET0_T_S4_S3_,"axG",@progbits,_ZSt18uninitialized_copyIPKdPdET0_T_S4_S3_,comdat
	.weak	_ZSt18uninitialized_copyIPKdPdET0_T_S4_S3_
	.type	_ZSt18uninitialized_copyIPKdPdET0_T_S4_S3_, @function
_ZSt18uninitialized_copyIPKdPdET0_T_S4_S3_:
.LFB2557:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movb	$1, -1(%rbp)
	movq	-40(%rbp), %rdx
	movq	-32(%rbp), %rcx
	movq	-24(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKdPdEET0_T_S6_S5_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2557:
	.size	_ZSt18uninitialized_copyIPKdPdET0_T_S4_S3_, .-_ZSt18uninitialized_copyIPKdPdET0_T_S4_S3_
	.section	.text._ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
	.type	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm, @function
_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm:
.LFB2603:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-16(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZdlPvm@PLT
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2603:
	.size	_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm, .-_ZN9__gnu_cxx13new_allocatorIdE10deallocateEPdm
	.section	.text._ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdEC5ERKS1_,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.type	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_, @function
_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_:
.LFB2605:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	nop
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2605:
	.size	_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_, .-_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.weak	_ZN9__gnu_cxx13new_allocatorIdEC1ERKS1_
	.set	_ZN9__gnu_cxx13new_allocatorIdEC1ERKS1_,_ZN9__gnu_cxx13new_allocatorIdEC2ERKS1_
	.section	.text._ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_,"axG",@progbits,_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_,comdat
	.weak	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
	.type	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, @function
_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_:
.LFB2607:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2607:
	.size	_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_, .-_ZNSt16allocator_traitsISaIdEE8max_sizeERKS0_
	.section	.text._ZSt3minImERKT_S2_S2_,"axG",@progbits,_ZSt3minImERKT_S2_S2_,comdat
	.weak	_ZSt3minImERKT_S2_S2_
	.type	_ZSt3minImERKT_S2_S2_, @function
_ZSt3minImERKT_S2_S2_:
.LFB2608:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	movq	(%rax), %rdx
	movq	-8(%rbp), %rax
	movq	(%rax), %rax
	cmpq	%rax, %rdx
	jnb	.L75
	movq	-16(%rbp), %rax
	jmp	.L76
.L75:
	movq	-8(%rbp), %rax
.L76:
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2608:
	.size	_ZSt3minImERKT_S2_S2_, .-_ZSt3minImERKT_S2_S2_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv:
.LFB2610:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movabsq	$1152921504606846975, %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2610:
	.size	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	.section	.text._ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv,"axG",@progbits,_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv,comdat
	.align 2
	.weak	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
	.type	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv, @function
_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv:
.LFB2609:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	cmpq	%rax, -16(%rbp)
	seta	%al
	movzbl	%al, %eax
	testq	%rax, %rax
	setne	%al
	testb	%al, %al
	je	.L80
	movabsq	$2305843009213693951, %rax
	cmpq	%rax, -16(%rbp)
	jbe	.L81
	call	_ZSt28__throw_bad_array_new_lengthv@PLT
.L81:
	call	_ZSt17__throw_bad_allocv@PLT
.L80:
	movq	-16(%rbp), %rax
	salq	$3, %rax
	movq	%rax, %rdi
	call	_Znwm@PLT
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2609:
	.size	_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv, .-_ZN9__gnu_cxx13new_allocatorIdE8allocateEmPKv
	.section	.text._ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKdPdEET0_T_S6_S5_,"axG",@progbits,_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKdPdEET0_T_S6_S5_,comdat
	.weak	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKdPdEET0_T_S6_S5_
	.type	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKdPdEET0_T_S6_S5_, @function
_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKdPdEET0_T_S6_S5_:
.LFB2611:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt4copyIPKdPdET0_T_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2611:
	.size	_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKdPdEET0_T_S6_S5_, .-_ZNSt20__uninitialized_copyILb1EE13__uninit_copyIPKdPdEET0_T_S6_S5_
	.section	.text._ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,"axG",@progbits,_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv,comdat
	.align 2
	.weak	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	.type	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv, @function
_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv:
.LFB2636:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	movq	%rax, %rdi
	call	_ZNK9__gnu_cxx13new_allocatorIdE11_M_max_sizeEv
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2636:
	.size	_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv, .-_ZNK9__gnu_cxx13new_allocatorIdE8max_sizeEv
	.section	.text._ZSt4copyIPKdPdET0_T_S4_S3_,"axG",@progbits,_ZSt4copyIPKdPdET0_T_S4_S3_,comdat
	.weak	_ZSt4copyIPKdPdET0_T_S4_S3_
	.type	_ZSt4copyIPKdPdET0_T_S4_S3_, @function
_ZSt4copyIPKdPdET0_T_S4_S3_:
.LFB2637:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%rbx
	subq	$40, %rsp
	.cfi_offset 3, -24
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPKdET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__miter_baseIPKdET_S2_
	movq	%rax, %rcx
	movq	-40(%rbp), %rax
	movq	%rax, %rdx
	movq	%rbx, %rsi
	movq	%rcx, %rdi
	call	_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_
	movq	-8(%rbp), %rbx
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2637:
	.size	_ZSt4copyIPKdPdET0_T_S4_S3_, .-_ZSt4copyIPKdPdET0_T_S4_S3_
	.section	.text._ZSt12__miter_baseIPKdET_S2_,"axG",@progbits,_ZSt12__miter_baseIPKdET_S2_,comdat
	.weak	_ZSt12__miter_baseIPKdET_S2_
	.type	_ZSt12__miter_baseIPKdET_S2_, @function
_ZSt12__miter_baseIPKdET_S2_:
.LFB2650:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2650:
	.size	_ZSt12__miter_baseIPKdET_S2_, .-_ZSt12__miter_baseIPKdET_S2_
	.section	.text._ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_,"axG",@progbits,_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_,comdat
	.weak	_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_
	.type	_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_, @function
_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_:
.LFB2651:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	pushq	%r12
	pushq	%rbx
	subq	$32, %rsp
	.cfi_offset 12, -24
	.cfi_offset 3, -32
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-40(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPdET_S1_
	movq	%rax, %r12
	movq	-32(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKdET_S2_
	movq	%rax, %rbx
	movq	-24(%rbp), %rax
	movq	%rax, %rdi
	call	_ZSt12__niter_baseIPKdET_S2_
	movq	%r12, %rdx
	movq	%rbx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	movq	%rax, %rdx
	leaq	-40(%rbp), %rax
	movq	%rdx, %rsi
	movq	%rax, %rdi
	call	_ZSt12__niter_wrapIPdET_RKS1_S1_
	addq	$32, %rsp
	popq	%rbx
	popq	%r12
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2651:
	.size	_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_, .-_ZSt13__copy_move_aILb0EPKdPdET1_T0_S4_S3_
	.section	.text._ZSt12__niter_baseIPKdET_S2_,"axG",@progbits,_ZSt12__niter_baseIPKdET_S2_,comdat
	.weak	_ZSt12__niter_baseIPKdET_S2_
	.type	_ZSt12__niter_baseIPKdET_S2_, @function
_ZSt12__niter_baseIPKdET_S2_:
.LFB2656:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2656:
	.size	_ZSt12__niter_baseIPKdET_S2_, .-_ZSt12__niter_baseIPKdET_S2_
	.section	.text._ZSt12__niter_baseIPdET_S1_,"axG",@progbits,_ZSt12__niter_baseIPdET_S1_,comdat
	.weak	_ZSt12__niter_baseIPdET_S1_
	.type	_ZSt12__niter_baseIPdET_S1_, @function
_ZSt12__niter_baseIPdET_S1_:
.LFB2657:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	-8(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2657:
	.size	_ZSt12__niter_baseIPdET_S1_, .-_ZSt12__niter_baseIPdET_S1_
	.section	.text._ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, @function
_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_:
.LFB2658:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2658:
	.size	_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_, .-_ZSt14__copy_move_a1ILb0EPKdPdET1_T0_S4_S3_
	.section	.text._ZSt12__niter_wrapIPdET_RKS1_S1_,"axG",@progbits,_ZSt12__niter_wrapIPdET_RKS1_S1_,comdat
	.weak	_ZSt12__niter_wrapIPdET_RKS1_S1_
	.type	_ZSt12__niter_wrapIPdET_RKS1_S1_, @function
_ZSt12__niter_wrapIPdET_RKS1_S1_:
.LFB2659:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	-16(%rbp), %rax
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2659:
	.size	_ZSt12__niter_wrapIPdET_RKS1_S1_, .-_ZSt12__niter_wrapIPdET_RKS1_S1_
	.section	.text._ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_,"axG",@progbits,_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_,comdat
	.weak	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	.type	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, @function
_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_:
.LFB2660:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$32, %rsp
	movq	%rdi, -8(%rbp)
	movq	%rsi, -16(%rbp)
	movq	%rdx, -24(%rbp)
	movq	-24(%rbp), %rdx
	movq	-16(%rbp), %rcx
	movq	-8(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2660:
	.size	_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_, .-_ZSt14__copy_move_a2ILb0EPKdPdET1_T0_S4_S3_
	.section	.text._ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_,"axG",@progbits,_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_,comdat
	.weak	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	.type	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, @function
_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_:
.LFB2661:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$48, %rsp
	movq	%rdi, -24(%rbp)
	movq	%rsi, -32(%rbp)
	movq	%rdx, -40(%rbp)
	movq	-32(%rbp), %rax
	subq	-24(%rbp), %rax
	sarq	$3, %rax
	movq	%rax, -8(%rbp)
	cmpq	$0, -8(%rbp)
	je	.L104
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-24(%rbp), %rcx
	movq	-40(%rbp), %rax
	movq	%rcx, %rsi
	movq	%rax, %rdi
	call	memmove@PLT
.L104:
	movq	-8(%rbp), %rax
	leaq	0(,%rax,8), %rdx
	movq	-40(%rbp), %rax
	addq	%rdx, %rax
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2661:
	.size	_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_, .-_ZNSt11__copy_moveILb0ELb1ESt26random_access_iterator_tagE8__copy_mIdEEPT_PKS3_S6_S4_
	.text
	.type	_Z41__static_initialization_and_destruction_0ii, @function
_Z41__static_initialization_and_destruction_0ii:
.LFB2662:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	subq	$16, %rsp
	movl	%edi, -4(%rbp)
	movl	%esi, -8(%rbp)
	cmpl	$1, -4(%rbp)
	jne	.L108
	cmpl	$65535, -8(%rbp)
	jne	.L108
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rdi
	call	_ZNSt8ios_base4InitC1Ev@PLT
	leaq	__dso_handle(%rip), %rax
	movq	%rax, %rdx
	leaq	_ZStL8__ioinit(%rip), %rax
	movq	%rax, %rsi
	movq	_ZNSt8ios_base4InitD1Ev@GOTPCREL(%rip), %rax
	movq	%rax, %rdi
	call	__cxa_atexit@PLT
.L108:
	nop
	leave
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2662:
	.size	_Z41__static_initialization_and_destruction_0ii, .-_Z41__static_initialization_and_destruction_0ii
	.type	_GLOBAL__sub_I_main, @function
_GLOBAL__sub_I_main:
.LFB2663:
	.cfi_startproc
	endbr64
	pushq	%rbp
	.cfi_def_cfa_offset 16
	.cfi_offset 6, -16
	movq	%rsp, %rbp
	.cfi_def_cfa_register 6
	movl	$65535, %esi
	movl	$1, %edi
	call	_Z41__static_initialization_and_destruction_0ii
	popq	%rbp
	.cfi_def_cfa 7, 8
	ret
	.cfi_endproc
.LFE2663:
	.size	_GLOBAL__sub_I_main, .-_GLOBAL__sub_I_main
	.section	.init_array,"aw"
	.align 8
	.quad	_GLOBAL__sub_I_main
	.section	.rodata
	.align 8
.LC1:
	.long	0
	.long	1072693248
	.align 8
.LC2:
	.long	0
	.long	1073741824
	.align 8
.LC3:
	.long	0
	.long	1074266112
	.align 8
.LC4:
	.long	0
	.long	1074790400
	.align 8
.LC5:
	.long	0
	.long	1075052544
	.align 8
.LC6:
	.long	0
	.long	1075314688
	.align 8
.LC7:
	.long	0
	.long	1075576832
	.align 8
.LC8:
	.long	0
	.long	1075838976
	.align 8
.LC9:
	.long	0
	.long	1075970048
	.align 8
.LC10:
	.long	-1717986918
	.long	1069128089
	.align 8
.LC11:
	.long	858993459
	.long	1071854387
	.align 8
.LC12:
	.long	-858993459
	.long	1075236044
	.align 8
.LC13:
	.long	858993459
	.long	1076245299
	.align 8
.LC14:
	.long	1717986918
	.long	1075471974
	.align 8
.LC15:
	.long	-1717986918
	.long	1076795801
	.align 8
.LC16:
	.long	858993459
	.long	1076441907
	.align 8
.LC17:
	.long	0
	.long	1077248000
	.align 8
.LC18:
	.long	-858993459
	.long	1076415692
	.hidden	DW.ref.__gxx_personality_v0
	.weak	DW.ref.__gxx_personality_v0
	.section	.data.rel.local.DW.ref.__gxx_personality_v0,"awG",@progbits,DW.ref.__gxx_personality_v0,comdat
	.align 8
	.type	DW.ref.__gxx_personality_v0, @object
	.size	DW.ref.__gxx_personality_v0, 8
DW.ref.__gxx_personality_v0:
	.quad	__gxx_personality_v0
	.hidden	__dso_handle
	.ident	"GCC: (Ubuntu 11.4.0-1ubuntu1~22.04) 11.4.0"
	.section	.note.GNU-stack,"",@progbits
	.section	.note.gnu.property,"a"
	.align 8
	.long	1f - 0f
	.long	4f - 1f
	.long	5
0:
	.string	"GNU"
1:
	.align 8
	.long	0xc0000002
	.long	3f - 2f
2:
	.long	0x3
3:
	.align 8
4:
