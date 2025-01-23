.text
.globl main


.data
	MAX: .word 100
	a: .space 400
	max: .word 0
.text


quicksort:
	addi $sp, $sp, -52
	sw $a0, 0($sp)
	sw $a1, 4($sp)
	sw $a2, 8($sp)
	sw $a3, 12($sp)
	sw $s0, 16($sp)
	sw $s1, 20($sp)
	sw $s2, 24($sp)
	sw $s3, 28($sp)
	sw $s4, 32($sp)
	sw $s5, 36($sp)
	sw $s6, 40($sp)
	sw $s7, 44($sp)
	sw $ra, 48($sp)

	add $s0, $zero, $a0
	add $s1, $zero, $a1
	addi $t0, $zero, 1
	add $s2, $zero, $t0
	sle $t0, $s0, $s1
	beqz $t0, senao_341058816

	lw $a0, 0($sp)
	lw $a1, 4($sp)
	lw $a2, 8($sp)
	lw $a3, 12($sp)
	lw $s0, 16($sp)
	lw $s1, 20($sp)
	lw $s2, 24($sp)
	lw $s3, 28($sp)
	lw $s4, 32($sp)
	lw $s5, 36($sp)
	lw $s6, 40($sp)
	lw $s7, 44($sp)
	lw $ra, 48($sp)
	addi $sp, $sp, 52

	jr $ra
	j exit_if_341058816
	senao_341058816:
	exit_if_341058816:
	addi $t0, $zero, 1
	sub $t1, $s1, $t0
	add $s3, $zero, $t1
	add $s4, $zero, $s0
	addi $t0, $zero, 1
	mul $t1, $t0, $s0
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	lw $t0, 0($t2)
	add $s5, $zero, $t0
	j enquantot_341126992
	enquantoc_341126992:
	enquantoc_341106592:
	addi $t0, $zero, 1
	add $t1, $s3, $t0
	add $s3, $zero, $t1
	enquantot_341106592:
	addi $t0, $zero, 1
	mul $t1, $t0, $s3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	lw $t0, 0($t2)
	slt $t1, $t0, $s5
	bnez $t1, enquantoc_341106592
	enquantoc_341106496:
	addi $t0, $zero, 1
	sub $t1, $s4, $t0
	add $s4, $zero, $t1
	enquantot_341106496:
	addi $t0, $zero, 1
	mul $t1, $t0, $s4
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	lw $t0, 0($t2)
	sgt $t1, $t0, $s5
	bnez $t1, enquantoc_341106496
	sge $t0, $s3, $s4
	beqz $t0, senao_341106272
	addi $t0, $zero, 0
	add $s2, $zero, $t0
	j exit_if_341093776
	senao_341106272:
	addi $t0, $zero, 1
	mul $t1, $t0, $s3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	lw $t0, 0($t2)
	add $s6, $zero, $t0
	addi $t0, $zero, 1
	mul $t1, $t0, $s3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	addi $t0, $zero, 1
	mul $t1, $t0, $s4
	la $t0, a
	sll $t3, $t1, 2
	add $t3, $t3, $t0
	lw $t0, 0($t3)
	sw $t0, 0($t2)
	addi $t0, $zero, 1
	mul $t1, $t0, $s4
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	sw $s6, 0($t2)
	exit_if_341093776:
	enquantot_341126992:
	bnez $s2, enquantoc_341126992
	addi $t0, $zero, 1
	mul $t1, $t0, $s3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	lw $t0, 0($t2)
	add $s6, $zero, $t0
	addi $t0, $zero, 1
	mul $t1, $t0, $s3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	addi $t0, $zero, 1
	mul $t1, $t0, $s0
	la $t0, a
	sll $t3, $t1, 2
	add $t3, $t3, $t0
	lw $t0, 0($t3)
	sw $t0, 0($t2)
	addi $t0, $zero, 1
	mul $t1, $t0, $s0
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	sw $s6, 0($t2)
	add $a1, $zero, $s1
	add $a0, $zero, $s4
	jal quicksort
	add $t0, $zero, $v0
	addi $t1, $zero, 1
	add $t2, $s3, $t1
	add $a1, $zero, $t2
	add $a0, $zero, $s0
	jal quicksort
	add $t1, $zero, $v0

	lw $a0, 0($sp)
	lw $a1, 4($sp)
	lw $a2, 8($sp)
	lw $a3, 12($sp)
	lw $s0, 16($sp)
	lw $s1, 20($sp)
	lw $s2, 24($sp)
	lw $s3, 28($sp)
	lw $s4, 32($sp)
	lw $s5, 36($sp)
	lw $s6, 40($sp)
	lw $s7, 44($sp)
	lw $ra, 48($sp)
	addi $sp, $sp, 52

	jr $ra

main:
	la $t0, max
	lw $t1, 0($t0)
	addi $t0, $zero, 0
	la $t1, max
	sw $t0, 0($t1)
	j enquantot_341262736
	enquantoc_341262736:
	.data
		string_341231280: .asciiz "Entre com o tamanho do vetor (valor entre 1 e 100): "
	.text
	la $a0, string_341231280
	addi $v0, $zero, 4
	syscall
	addi $v0, $zero, 5
	syscall
	la $t0, max
	sw $v0, 0($t0)
	enquantot_341262736:
	la $t0, max
	lw $t1, 0($t0)
	addi $t0, $zero, 0
	sle $t2, $t1, $t0
	la $t0, max
	lw $t1, 0($t0)
	addi $t0, $zero, 100
	sgt $t3, $t1, $t0
	addi $t0, $zero, 1
	beq $t0, $t2, ou_341230336
	beq $t0, $t3, ou_341230336
	addi $t0, $zero, 0
	ou_341230336:
	bnez $t0, enquantoc_341262736
	addi $t0, $zero, 0
	add $s1, $zero, $t0
	j parat_341262640
	parac_341262640:
	addi $t0, $zero, 1
	add $t1, $s1, $t0
	.data
		string_341291552: .asciiz "Entre com o valor da posicao "
	.text
	la $a0, string_341291552
	addi $v0, $zero, 4
	syscall
	add $a0, $zero, $t1
	addi $v0, $zero, 1
	syscall
	.data
		string_55271: .asciiz ": "
	.text
	la $a0, string_55271
	addi $v0, $zero, 4
	syscall
	addi $v0, $zero, 5
	syscall
	add $s2, $zero, $v0
	addi $t0, $zero, 1
	mul $t1, $t0, $s1
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	sw $s2, 0($t2)
	add $t0, $zero, $s1
	addi $s1, $s1, 1
	parat_341262640:
	la $t1, max
	lw $t2, 0($t1)
	slt $t1, $s1, $t2
	bnez $t1, parac_341262640
	addi $t1, $zero, 0
	add $a1, $zero, $t1
	la $t1, max
	lw $t2, 0($t1)
	addi $t1, $zero, 1
	sub $t3, $t2, $t1
	add $a0, $zero, $t3
	jal quicksort
	add $t1, $zero, $v0
	addi $t2, $zero, 0
	add $s1, $zero, $t2
	j parat_341262448
	parac_341262448:
	addi $t2, $zero, 1
	mul $t3, $t2, $s1
	la $t2, a
	sll $t4, $t3, 2
	add $t4, $t4, $t2
	lw $t2, 0($t4)
	.data
		string_341297424: .asciiz ""
	.text
	la $a0, string_341297424
	addi $v0, $zero, 4
	syscall
	add $a0, $zero, $t2
	addi $v0, $zero, 1
	syscall
	.data
		string_52352: .asciiz " "
	.text
	la $a0, string_52352
	addi $v0, $zero, 4
	syscall
	add $t2, $zero, $s1
	addi $s1, $s1, 1
	parat_341262448:
	la $t3, max
	lw $t4, 0($t3)
	slt $t3, $s1, $t4
	bnez $t3, parac_341262448
	.data
		string_341261152: .asciiz "\n"
	.text
	la $a0, string_341261152
	addi $v0, $zero, 4
	syscall
	addi $t3, $zero, 0
	add $v0, $zero, $t3

	addi $v0, $zero, 10
	syscall
