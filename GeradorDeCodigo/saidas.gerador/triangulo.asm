.text
.globl main


.data
.text


main:
	.data
		string_1523933712: .asciiz "=== Determinar Tipo de Triangulo ===\n\n"
	.text
	la $a0, string_1523933712
	addi $v0, $zero, 4
	syscall
	.data
		string_1523933520: .asciiz "Entre com o tamanho do lado A: "
	.text
	la $a0, string_1523933520
	addi $v0, $zero, 4
	syscall
	addi $v0, $zero, 5
	syscall
	add $s0, $zero, $v0
	.data
		string_1523933024: .asciiz "Entre com o tamanho do lado B: "
	.text
	la $a0, string_1523933024
	addi $v0, $zero, 4
	syscall
	addi $v0, $zero, 5
	syscall
	add $s1, $zero, $v0
	.data
		string_1523932528: .asciiz "Entre com o tamanho do lado C: "
	.text
	la $a0, string_1523932528
	addi $v0, $zero, 4
	syscall
	addi $v0, $zero, 5
	syscall
	add $s2, $zero, $v0
	.data
		string_1523932032: .asciiz "\n"
	.text
	la $a0, string_1523932032
	addi $v0, $zero, 4
	syscall
	add $t0, $s1, $s2
	slt $t1, $s0, $t0
	add $t0, $s0, $s2
	slt $t2, $s1, $t0
	addi $t0, $zero, 0
	beq $t0, $t1, f_logical_and_1523922496
	beq $t0, $t2, f_logical_and_1523922496
	addi $t0, $zero, 1
	f_logical_and_1523922496:
	add $t1, $s0, $s1
	slt $t2, $s2, $t1
	addi $t1, $zero, 0
	beq $t1, $t0, f_logical_and_1523916992
	beq $t1, $t2, f_logical_and_1523916992
	addi $t1, $zero, 1
	f_logical_and_1523916992:
	beqz $t1, else_1523898128
	seq $t0, $s0, $s1
	seq $t1, $s1, $s2
	addi $t2, $zero, 0
	beq $t2, $t0, f_logical_and_1523910448
	beq $t2, $t1, f_logical_and_1523910448
	addi $t2, $zero, 1
	f_logical_and_1523910448:
	beqz $t2, else_1523898512
	.data
		string_1523909504: .asciiz "Triangulo Equilatero."
	.text
	la $a0, string_1523909504
	addi $v0, $zero, 4
	syscall
	j exit_if_1523909408
	else_1523898512:
	seq $t0, $s0, $s1
	seq $t1, $s0, $s2
	addi $t2, $zero, 1
	beq $t2, $t0, t_logical_or_1523903584
	beq $t2, $t1, t_logical_or_1523903584
	addi $t2, $zero, 0
	t_logical_or_1523903584:
	seq $t0, $s2, $s1
	addi $t1, $zero, 1
	beq $t1, $t2, t_logical_or_1523899936
	beq $t1, $t0, t_logical_or_1523899936
	addi $t1, $zero, 0
	t_logical_or_1523899936:
	beqz $t1, else_1523898640
	.data
		string_1523898992: .asciiz "Triangulo Isosceles."
	.text
	la $a0, string_1523898992
	addi $v0, $zero, 4
	syscall
	j exit_if_1523898896
	else_1523898640:
	.data
		string_1523898736: .asciiz "Triangulo Escaleno."
	.text
	la $a0, string_1523898736
	addi $v0, $zero, 4
	syscall
	exit_if_1523898896:
	exit_if_1523909408:
	j exit_if_1523898384
	else_1523898128:
	.data
		string_1523898224: .asciiz "Nao eh Triangulo!!!\n"
	.text
	la $a0, string_1523898224
	addi $v0, $zero, 4
	syscall
	exit_if_1523898384:
	addi $t0, $zero, 0
	add $v0, $zero, $t0

	addi $v0, $zero, 10
	syscall
