.text
.globl main


.data
.text


main:
	.data
		string_1151758864: .asciiz "=== Determinar Tipo de Triangulo ===\n\n"
	.text
	la $a0, string_1151758864
	addi $v0, $zero, 4
	syscall
	.data
		string_1151758672: .asciiz "Entre com o tamanho do lado A: "
	.text
	la $a0, string_1151758672
	addi $v0, $zero, 4
	syscall
	addi $v0, $zero, 5
	syscall
	add $s0, $zero, $v0
	.data
		string_1151758176: .asciiz "Entre com o tamanho do lado B: "
	.text
	la $a0, string_1151758176
	addi $v0, $zero, 4
	syscall
	addi $v0, $zero, 5
	syscall
	add $s1, $zero, $v0
	.data
		string_1151757680: .asciiz "Entre com o tamanho do lado C: "
	.text
	la $a0, string_1151757680
	addi $v0, $zero, 4
	syscall
	addi $v0, $zero, 5
	syscall
	add $s2, $zero, $v0
	.data
		string_1151757184: .asciiz "\n"
	.text
	la $a0, string_1151757184
	addi $v0, $zero, 4
	syscall
	add $t0, $s1, $s2
	slt $t1, $s0, $t0
	add $t0, $s0, $s2
	slt $t2, $s1, $t0
	addi $t0, $zero, 0
	beq $t0, $t1, f_logical_and_1151747648
	beq $t0, $t2, f_logical_and_1151747648
	addi $t0, $zero, 1
	f_logical_and_1151747648:
	add $t1, $s0, $s1
	slt $t2, $s2, $t1
	addi $t1, $zero, 0
	beq $t1, $t0, f_logical_and_1151742144
	beq $t1, $t2, f_logical_and_1151742144
	addi $t1, $zero, 1
	f_logical_and_1151742144:
	beqz $t1, else_1151723280
	seq $t0, $s0, $s1
	seq $t1, $s1, $s2
	addi $t2, $zero, 0
	beq $t2, $t0, f_logical_and_1151735600
	beq $t2, $t1, f_logical_and_1151735600
	addi $t2, $zero, 1
	f_logical_and_1151735600:
	beqz $t2, else_1151723664
	.data
		string_1151734656: .asciiz "Triangulo Equilatero."
	.text
	la $a0, string_1151734656
	addi $v0, $zero, 4
	syscall
	j exit_if_1151734560
	else_1151723664:
	seq $t0, $s0, $s1
	seq $t1, $s0, $s2
	addi $t2, $zero, 1
	beq $t2, $t0, t_logical_or_1151728736
	beq $t2, $t1, t_logical_or_1151728736
	addi $t2, $zero, 0
	t_logical_or_1151728736:
	seq $t0, $s2, $s1
	addi $t1, $zero, 1
	beq $t1, $t2, t_logical_or_1151725088
	beq $t1, $t0, t_logical_or_1151725088
	addi $t1, $zero, 0
	t_logical_or_1151725088:
	beqz $t1, else_1151723792
	.data
		string_1151724144: .asciiz "Triangulo Isosceles."
	.text
	la $a0, string_1151724144
	addi $v0, $zero, 4
	syscall
	j exit_if_1151724048
	else_1151723792:
	.data
		string_1151723888: .asciiz "Triangulo Escaleno."
	.text
	la $a0, string_1151723888
	addi $v0, $zero, 4
	syscall
	exit_if_1151724048:
	exit_if_1151734560:
	j exit_if_1151723536
	else_1151723280:
	.data
		string_1151723376: .asciiz "Nao eh Triangulo!!!\n"
	.text
	la $a0, string_1151723376
	addi $v0, $zero, 4
	syscall
	exit_if_1151723536:
	addi $t0, $zero, 0
	add $v0, $zero, $t0

	addi $v0, $zero, 10
	syscall
