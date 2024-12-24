.text
.globl main


.data
.text


main:
	.data
		string_554557968: .asciiz "=== Determinar Tipo de Triangulo ===\n\n"
	.text
	la $a0, string_554557968
	addi $v0, $zero, 4
	syscall
	.data
		string_554557776: .asciiz "Entre com o tamanho do lado A: "
	.text
	la $a0, string_554557776
	addi $v0, $zero, 4
	syscall
	addi $v0, $zero, 5
	syscall
	add $s0, $zero, $v0
	.data
		string_554557280: .asciiz "Entre com o tamanho do lado B: "
	.text
	la $a0, string_554557280
	addi $v0, $zero, 4
	syscall
	addi $v0, $zero, 5
	syscall
	add $s1, $zero, $v0
	.data
		string_554556784: .asciiz "Entre com o tamanho do lado C: "
	.text
	la $a0, string_554556784
	addi $v0, $zero, 4
	syscall
	addi $v0, $zero, 5
	syscall
	add $s2, $zero, $v0
	.data
		string_554556288: .asciiz "\n"
	.text
	la $a0, string_554556288
	addi $v0, $zero, 4
	syscall
	add $t0, $s1, $s2
	slt $t1, $s0, $t0
	add $t0, $s0, $s2
	slt $t2, $s1, $t0
	addi $t0, $zero, 0
	beq $t0, $t1, f_logical_and_554546752
	beq $t0, $t2, f_logical_and_554546752
	addi $t0, $zero, 1
	f_logical_and_554546752:
	add $t1, $s0, $s1
	slt $t2, $s2, $t1
	addi $t1, $zero, 0
	beq $t1, $t0, f_logical_and_554541248
	beq $t1, $t2, f_logical_and_554541248
	addi $t1, $zero, 1
	f_logical_and_554541248:
	beqz $t1, else_554522384
	seq $t0, $s0, $s1
	seq $t1, $s1, $s2
	addi $t2, $zero, 0
	beq $t2, $t0, f_logical_and_554534704
	beq $t2, $t1, f_logical_and_554534704
	addi $t2, $zero, 1
	f_logical_and_554534704:
	beqz $t2, else_554522768
	.data
		string_554533760: .asciiz "Triangulo Equilatero."
	.text
	la $a0, string_554533760
	addi $v0, $zero, 4
	syscall
	j exit_if_554533664
	else_554522768:
	seq $t0, $s0, $s1
	seq $t1, $s0, $s2
	addi $t2, $zero, 1
	beq $t2, $t0, t_logical_or_554527840
	beq $t2, $t1, t_logical_or_554527840
	addi $t2, $zero, 0
	t_logical_or_554527840:
	seq $t0, $s2, $s1
	addi $t1, $zero, 1
	beq $t1, $t2, t_logical_or_554524192
	beq $t1, $t0, t_logical_or_554524192
	addi $t1, $zero, 0
	t_logical_or_554524192:
	beqz $t1, else_554522896
	.data
		string_554523248: .asciiz "Triangulo Isosceles."
	.text
	la $a0, string_554523248
	addi $v0, $zero, 4
	syscall
	j exit_if_554523152
	else_554522896:
	.data
		string_554522992: .asciiz "Triangulo Escaleno."
	.text
	la $a0, string_554522992
	addi $v0, $zero, 4
	syscall
	exit_if_554523152:
	exit_if_554533664:
	j exit_if_554522640
	else_554522384:
	.data
		string_554522480: .asciiz "Nao eh Triangulo!!!\n"
	.text
	la $a0, string_554522480
	addi $v0, $zero, 4
	syscall
	exit_if_554522640:
	addi $t0, $zero, 0
	add $v0, $zero, $t0

	addi $v0, $zero, 10
	syscall
