.data
	basePrint: .asciiz "Digite a base: "
    expoentePrint: .asciiz "Digite o expoente: "
    toPrint: .asciiz "Resultado: "
.text	

main:
	la $a0, basePrint
	addi $v0, $zero, 4
	syscall

    li $v0, 5
	syscall
	add $s0, $v0, $zero

    la $a0, expoentePrint
    addi $v0, $zero, 4
    syscall

    li $v0, 5
    syscall
    add $s1, $v0, $zero

    la $a0, toPrint
    addi $v0, $zero, 4
    syscall

    addi $v0, $zero, 1
    jal potencia

    move $a0, $v0
    li $v0, 1
    syscall

    li $v0, 10
    syscall

potencia:
    addi $sp, $sp, -8
    sw $ra, 0($sp)
    sw $s1, 4($sp)

    beq $s1, $zero, end_potencia    

    subi $s1, $s1, 1
    jal potencia

    mul $v0, $s0, $v0

end_potencia:
    lw $ra, 0($sp)
    lw $s1, 4($sp)
    addi $sp, $sp, 8

    jr $ra