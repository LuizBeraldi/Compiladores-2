.text
.globl main


.data
	v10: .word 0
	v01: .word 0
	v20: .word 0
	v11: .word 0
	v02: .word 0
	v21: .word 0
	a: .space 400 # global array
	v12: .word 0
	v03: .word 0
	v22: .word 0
	v13: .word 0
	v04: .word 0
	v23: .word 0
	v14: .word 0
	v05: .word 0
	v24: .word 0
	v15: .word 0
	v06: .word 0
	v25: .word 0
	v16: .word 0
	v07: .word 0
	v17: .word 0
	v08: .word 0
	v18: .word 0
	v09: .word 0
	v19: .word 0
.text


GenValue:
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

	#loading 1 params
	add $s0, $zero, $a0
	add $v0, $zero, $s0

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

Panic:
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

	.data
		string_2048260144: .asciiz "\n\n"
	.text
	la $a0, string_2048260144
	addi $v0, $zero, 4
	syscall
	.data
		string_2048260304: .asciiz "                 "
	.text
	la $a0, string_2048260304
	addi $v0, $zero, 4
	syscall
	.data
		string_2048260464: .asciiz "#######\n"
	.text
	la $a0, string_2048260464
	addi $v0, $zero, 4
	syscall
	.data
		string_2048260624: .asciiz "             "
	.text
	la $a0, string_2048260624
	addi $v0, $zero, 4
	syscall
	.data
		string_2048260784: .asciiz "###############\n"
	.text
	la $a0, string_2048260784
	addi $v0, $zero, 4
	syscall
	.data
		string_2048260944: .asciiz "          "
	.text
	la $a0, string_2048260944
	addi $v0, $zero, 4
	syscall
	.data
		string_2048261104: .asciiz "#####################\n"
	.text
	la $a0, string_2048261104
	addi $v0, $zero, 4
	syscall
	.data
		string_2048261280: .asciiz "         "
	.text
	la $a0, string_2048261280
	addi $v0, $zero, 4
	syscall
	.data
		string_2048261440: .asciiz "#######################\n"
	.text
	la $a0, string_2048261440
	addi $v0, $zero, 4
	syscall
	.data
		string_2048261616: .asciiz "        "
	.text
	la $a0, string_2048261616
	addi $v0, $zero, 4
	syscall
	.data
		string_2048261776: .asciiz "#########################\n"
	.text
	la $a0, string_2048261776
	addi $v0, $zero, 4
	syscall
	.data
		string_2048261952: .asciiz "       "
	.text
	la $a0, string_2048261952
	addi $v0, $zero, 4
	syscall
	.data
		string_2048262112: .asciiz "###########################\n"
	.text
	la $a0, string_2048262112
	addi $v0, $zero, 4
	syscall
	.data
		string_2048262288: .asciiz "       "
	.text
	la $a0, string_2048262288
	addi $v0, $zero, 4
	syscall
	.data
		string_2048262448: .asciiz "###########################\n"
	.text
	la $a0, string_2048262448
	addi $v0, $zero, 4
	syscall
	.data
		string_2048262624: .asciiz "       "
	.text
	la $a0, string_2048262624
	addi $v0, $zero, 4
	syscall
	.data
		string_2048262784: .asciiz "########"
	.text
	la $a0, string_2048262784
	addi $v0, $zero, 4
	syscall
	.data
		string_2048262944: .asciiz "   "
	.text
	la $a0, string_2048262944
	addi $v0, $zero, 4
	syscall
	.data
		string_2048263104: .asciiz "#####"
	.text
	la $a0, string_2048263104
	addi $v0, $zero, 4
	syscall
	.data
		string_2048263264: .asciiz "   "
	.text
	la $a0, string_2048263264
	addi $v0, $zero, 4
	syscall
	.data
		string_2048263424: .asciiz "########\n"
	.text
	la $a0, string_2048263424
	addi $v0, $zero, 4
	syscall
	.data
		string_2048263584: .asciiz "       "
	.text
	la $a0, string_2048263584
	addi $v0, $zero, 4
	syscall
	.data
		string_2048263744: .asciiz "######"
	.text
	la $a0, string_2048263744
	addi $v0, $zero, 4
	syscall
	.data
		string_2048263904: .asciiz "      "
	.text
	la $a0, string_2048263904
	addi $v0, $zero, 4
	syscall
	.data
		string_2048264064: .asciiz "###"
	.text
	la $a0, string_2048264064
	addi $v0, $zero, 4
	syscall
	.data
		string_2048264224: .asciiz "       "
	.text
	la $a0, string_2048264224
	addi $v0, $zero, 4
	syscall
	.data
		string_2048264384: .asciiz "#####\n"
	.text
	la $a0, string_2048264384
	addi $v0, $zero, 4
	syscall
	.data
		string_2048274576: .asciiz "        "
	.text
	la $a0, string_2048274576
	addi $v0, $zero, 4
	syscall
	.data
		string_2048274736: .asciiz "####"
	.text
	la $a0, string_2048274736
	addi $v0, $zero, 4
	syscall
	.data
		string_2048274896: .asciiz "       "
	.text
	la $a0, string_2048274896
	addi $v0, $zero, 4
	syscall
	.data
		string_2048275056: .asciiz "###"
	.text
	la $a0, string_2048275056
	addi $v0, $zero, 4
	syscall
	.data
		string_2048275216: .asciiz "       "
	.text
	la $a0, string_2048275216
	addi $v0, $zero, 4
	syscall
	.data
		string_2048275376: .asciiz "####\n"
	.text
	la $a0, string_2048275376
	addi $v0, $zero, 4
	syscall
	.data
		string_2048275536: .asciiz "        "
	.text
	la $a0, string_2048275536
	addi $v0, $zero, 4
	syscall
	.data
		string_2048275696: .asciiz "####"
	.text
	la $a0, string_2048275696
	addi $v0, $zero, 4
	syscall
	.data
		string_2048275856: .asciiz "      "
	.text
	la $a0, string_2048275856
	addi $v0, $zero, 4
	syscall
	.data
		string_2048276016: .asciiz "#####"
	.text
	la $a0, string_2048276016
	addi $v0, $zero, 4
	syscall
	.data
		string_2048276176: .asciiz "      "
	.text
	la $a0, string_2048276176
	addi $v0, $zero, 4
	syscall
	.data
		string_2048276336: .asciiz "####\n"
	.text
	la $a0, string_2048276336
	addi $v0, $zero, 4
	syscall
	.data
		string_2048276496: .asciiz "         "
	.text
	la $a0, string_2048276496
	addi $v0, $zero, 4
	syscall
	.data
		string_2048276656: .asciiz "##########"
	.text
	la $a0, string_2048276656
	addi $v0, $zero, 4
	syscall
	.data
		string_2048276816: .asciiz "   "
	.text
	la $a0, string_2048276816
	addi $v0, $zero, 4
	syscall
	.data
		string_2048276976: .asciiz "##########\n"
	.text
	la $a0, string_2048276976
	addi $v0, $zero, 4
	syscall
	.data
		string_2048277136: .asciiz "          "
	.text
	la $a0, string_2048277136
	addi $v0, $zero, 4
	syscall
	.data
		string_2048277296: .asciiz "#########"
	.text
	la $a0, string_2048277296
	addi $v0, $zero, 4
	syscall
	.data
		string_2048277456: .asciiz "   "
	.text
	la $a0, string_2048277456
	addi $v0, $zero, 4
	syscall
	.data
		string_2048277616: .asciiz "#########\n"
	.text
	la $a0, string_2048277616
	addi $v0, $zero, 4
	syscall
	.data
		string_2048277776: .asciiz "            "
	.text
	la $a0, string_2048277776
	addi $v0, $zero, 4
	syscall
	.data
		string_2048277936: .asciiz "#################\n"
	.text
	la $a0, string_2048277936
	addi $v0, $zero, 4
	syscall
	.data
		string_2048278096: .asciiz "             "
	.text
	la $a0, string_2048278096
	addi $v0, $zero, 4
	syscall
	.data
		string_2048278256: .asciiz "###############\n"
	.text
	la $a0, string_2048278256
	addi $v0, $zero, 4
	syscall
	.data
		string_2048278416: .asciiz "  "
	.text
	la $a0, string_2048278416
	addi $v0, $zero, 4
	syscall
	.data
		string_2048278576: .asciiz "###        "
	.text
	la $a0, string_2048278576
	addi $v0, $zero, 4
	syscall
	.data
		string_2048278736: .asciiz "####"
	.text
	la $a0, string_2048278736
	addi $v0, $zero, 4
	syscall
	.data
		string_2048278896: .asciiz " "
	.text
	la $a0, string_2048278896
	addi $v0, $zero, 4
	syscall
	.data
		string_2048279056: .asciiz "#"
	.text
	la $a0, string_2048279056
	addi $v0, $zero, 4
	syscall
	.data
		string_2048279216: .asciiz " "
	.text
	la $a0, string_2048279216
	addi $v0, $zero, 4
	syscall
	.data
		string_2048279376: .asciiz "#"
	.text
	la $a0, string_2048279376
	addi $v0, $zero, 4
	syscall
	.data
		string_2048279536: .asciiz " "
	.text
	la $a0, string_2048279536
	addi $v0, $zero, 4
	syscall
	.data
		string_2048279696: .asciiz "#"
	.text
	la $a0, string_2048279696
	addi $v0, $zero, 4
	syscall
	.data
		string_2048264512: .asciiz " "
	.text
	la $a0, string_2048264512
	addi $v0, $zero, 4
	syscall
	.data
		string_2048264672: .asciiz "####"
	.text
	la $a0, string_2048264672
	addi $v0, $zero, 4
	syscall
	.data
		string_2048264832: .asciiz "       "
	.text
	la $a0, string_2048264832
	addi $v0, $zero, 4
	syscall
	.data
		string_2048264992: .asciiz "###\n"
	.text
	la $a0, string_2048264992
	addi $v0, $zero, 4
	syscall
	.data
		string_2048265152: .asciiz " "
	.text
	la $a0, string_2048265152
	addi $v0, $zero, 4
	syscall
	.data
		string_2048265312: .asciiz "#####"
	.text
	la $a0, string_2048265312
	addi $v0, $zero, 4
	syscall
	.data
		string_2048265472: .asciiz "        "
	.text
	la $a0, string_2048265472
	addi $v0, $zero, 4
	syscall
	.data
		string_2048265632: .asciiz "#############"
	.text
	la $a0, string_2048265632
	addi $v0, $zero, 4
	syscall
	.data
		string_2048265792: .asciiz "       "
	.text
	la $a0, string_2048265792
	addi $v0, $zero, 4
	syscall
	.data
		string_2048265952: .asciiz "#####\n"
	.text
	la $a0, string_2048265952
	addi $v0, $zero, 4
	syscall
	.data
		string_2048266112: .asciiz "  "
	.text
	la $a0, string_2048266112
	addi $v0, $zero, 4
	syscall
	.data
		string_2048266272: .asciiz "#######"
	.text
	la $a0, string_2048266272
	addi $v0, $zero, 4
	syscall
	.data
		string_2048266432: .asciiz "      "
	.text
	la $a0, string_2048266432
	addi $v0, $zero, 4
	syscall
	.data
		string_2048266592: .asciiz "###########"
	.text
	la $a0, string_2048266592
	addi $v0, $zero, 4
	syscall
	.data
		string_2048266752: .asciiz "     "
	.text
	la $a0, string_2048266752
	addi $v0, $zero, 4
	syscall
	.data
		string_2048266912: .asciiz "########\n"
	.text
	la $a0, string_2048266912
	addi $v0, $zero, 4
	syscall
	.data
		string_2048267072: .asciiz "##############"
	.text
	la $a0, string_2048267072
	addi $v0, $zero, 4
	syscall
	.data
		string_2048267232: .asciiz "    "
	.text
	la $a0, string_2048267232
	addi $v0, $zero, 4
	syscall
	.data
		string_2048267392: .asciiz "#####"
	.text
	la $a0, string_2048267392
	addi $v0, $zero, 4
	syscall
	.data
		string_2048267552: .asciiz "    "
	.text
	la $a0, string_2048267552
	addi $v0, $zero, 4
	syscall
	.data
		string_2048267712: .asciiz "##############\n"
	.text
	la $a0, string_2048267712
	addi $v0, $zero, 4
	syscall
	.data
		string_2048267872: .asciiz "####################"
	.text
	la $a0, string_2048267872
	addi $v0, $zero, 4
	syscall
	.data
		string_2048268032: .asciiz "   "
	.text
	la $a0, string_2048268032
	addi $v0, $zero, 4
	syscall
	.data
		string_2048268192: .asciiz "##################\n"
	.text
	la $a0, string_2048268192
	addi $v0, $zero, 4
	syscall
	.data
		string_2048268352: .asciiz " "
	.text
	la $a0, string_2048268352
	addi $v0, $zero, 4
	syscall
	.data
		string_2048268512: .asciiz "###"
	.text
	la $a0, string_2048268512
	addi $v0, $zero, 4
	syscall
	.data
		string_2048268672: .asciiz "      "
	.text
	la $a0, string_2048268672
	addi $v0, $zero, 4
	syscall
	.data
		string_2048268832: .asciiz "###############"
	.text
	la $a0, string_2048268832
	addi $v0, $zero, 4
	syscall
	.data
		string_2048268992: .asciiz " "
	.text
	la $a0, string_2048268992
	addi $v0, $zero, 4
	syscall
	.data
		string_2048269152: .asciiz "######\n"
	.text
	la $a0, string_2048269152
	addi $v0, $zero, 4
	syscall
	.data
		string_2048269312: .asciiz "           "
	.text
	la $a0, string_2048269312
	addi $v0, $zero, 4
	syscall
	.data
		string_2048269472: .asciiz "####"
	.text
	la $a0, string_2048269472
	addi $v0, $zero, 4
	syscall
	.data
		string_2048269632: .asciiz " "
	.text
	la $a0, string_2048269632
	addi $v0, $zero, 4
	syscall
	.data
		string_2048269792: .asciiz "###############\n"
	.text
	la $a0, string_2048269792
	addi $v0, $zero, 4
	syscall
	.data
		string_2048269952: .asciiz "  "
	.text
	la $a0, string_2048269952
	addi $v0, $zero, 4
	syscall
	.data
		string_2048270112: .asciiz "##################"
	.text
	la $a0, string_2048270112
	addi $v0, $zero, 4
	syscall
	.data
		string_2048270272: .asciiz " "
	.text
	la $a0, string_2048270272
	addi $v0, $zero, 4
	syscall
	.data
		string_2048270432: .asciiz "###################\n"
	.text
	la $a0, string_2048270432
	addi $v0, $zero, 4
	syscall
	.data
		string_2048270592: .asciiz "  "
	.text
	la $a0, string_2048270592
	addi $v0, $zero, 4
	syscall
	.data
		string_2048270752: .asciiz "##############"
	.text
	la $a0, string_2048270752
	addi $v0, $zero, 4
	syscall
	.data
		string_2048270912: .asciiz "           "
	.text
	la $a0, string_2048270912
	addi $v0, $zero, 4
	syscall
	.data
		string_2048271072: .asciiz "##############\n"
	.text
	la $a0, string_2048271072
	addi $v0, $zero, 4
	syscall
	.data
		string_2048271232: .asciiz "   "
	.text
	la $a0, string_2048271232
	addi $v0, $zero, 4
	syscall
	.data
		string_2048271392: .asciiz "#######"
	.text
	la $a0, string_2048271392
	addi $v0, $zero, 4
	syscall
	.data
		string_2048271552: .asciiz "                      "
	.text
	la $a0, string_2048271552
	addi $v0, $zero, 4
	syscall
	.data
		string_2048271728: .asciiz "########\n"
	.text
	la $a0, string_2048271728
	addi $v0, $zero, 4
	syscall
	.data
		string_2048271888: .asciiz "     "
	.text
	la $a0, string_2048271888
	addi $v0, $zero, 4
	syscall
	.data
		string_2048272048: .asciiz "####"
	.text
	la $a0, string_2048272048
	addi $v0, $zero, 4
	syscall
	.data
		string_2048272208: .asciiz "                         "
	.text
	la $a0, string_2048272208
	addi $v0, $zero, 4
	syscall
	.data
		string_2048272384: .asciiz "#####\n"
	.text
	la $a0, string_2048272384
	addi $v0, $zero, 4
	syscall
	.data
		string_2048272544: .asciiz "\n\nFATAL ERROR: O codigo assembly gerado possui ao menos um Erro.\n"
	.text
	la $a0, string_2048272544
	addi $v0, $zero, 4
	syscall
	addi $t0, $zero, 666
	# exit with status 666
	addi $v0, $zero, 10
	syscall

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

PopulateArray:
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

	la $t0, v01
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v01
	sw $t0, 0($t1)
	la $t0, v02
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v02
	sw $t0, 0($t1)
	la $t0, v03
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v03
	sw $t0, 0($t1)
	la $t0, v04
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v04
	sw $t0, 0($t1)
	la $t0, v05
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v05
	sw $t0, 0($t1)
	la $t0, v06
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v06
	sw $t0, 0($t1)
	la $t0, v07
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v07
	sw $t0, 0($t1)
	la $t0, v08
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v08
	sw $t0, 0($t1)
	la $t0, v09
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v09
	sw $t0, 0($t1)
	la $t0, v10
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v10
	sw $t0, 0($t1)
	la $t0, v11
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v11
	sw $t0, 0($t1)
	la $t0, v12
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v12
	sw $t0, 0($t1)
	la $t0, v13
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v13
	sw $t0, 0($t1)
	la $t0, v14
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v14
	sw $t0, 0($t1)
	la $t0, v15
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v15
	sw $t0, 0($t1)
	la $t0, v16
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v16
	sw $t0, 0($t1)
	la $t0, v17
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v17
	sw $t0, 0($t1)
	la $t0, v18
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v18
	sw $t0, 0($t1)
	la $t0, v19
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v19
	sw $t0, 0($t1)
	la $t0, v20
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v20
	sw $t0, 0($t1)
	la $t0, v21
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v21
	sw $t0, 0($t1)
	la $t0, v22
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v22
	sw $t0, 0($t1)
	la $t0, v23
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v23
	sw $t0, 0($t1)
	la $t0, v24
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v24
	sw $t0, 0($t1)
	la $t0, v25
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0 # function param i
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v25
	sw $t0, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 0
	addi $t2, $zero, 0
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 0
	addi $t2, $zero, 2
	addi $t3, $zero, 1
	srlv $t4, $t2, $t3
	add $t2, $t1, $t4
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 0
	addi $t2, $zero, 2
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 0
	addi $t2, $zero, 3
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 0
	addi $t2, $zero, 4
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 0
	addi $t2, $zero, 5
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 0
	addi $t2, $zero, 6
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 0
	addi $t2, $zero, 7
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 0
	addi $t2, $zero, 8
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 0
	addi $t2, $zero, 9
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 5
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 5
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	addi $t1, $zero, 2
	addi $t2, $zero, 1
	srlv $t4, $t1, $t2
	add $t1, $t3, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 5
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	addi $t1, $zero, 2
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 5
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	addi $t1, $zero, 3
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 5
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	addi $t1, $zero, 4
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 5
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	addi $t1, $zero, 5
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 5
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	addi $t1, $zero, 6
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 5
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	addi $t1, $zero, 7
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 5
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	addi $t1, $zero, 8
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 5
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	addi $t1, $zero, 9
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 10
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 10
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	addi $t1, $zero, 2
	addi $t2, $zero, 1
	srlv $t4, $t1, $t2
	add $t1, $t3, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 10
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	addi $t1, $zero, 2
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 10
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	addi $t1, $zero, 3
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 10
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	addi $t1, $zero, 4
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 10
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	addi $t1, $zero, 5
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 10
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	addi $t1, $zero, 6
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 10
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	addi $t1, $zero, 7
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 10
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	addi $t1, $zero, 8
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 10
	addi $t2, $zero, 1
	sllv $t3, $t1, $t2
	addi $t1, $zero, 9
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 60
	addi $t2, $zero, 1
	srlv $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 60
	addi $t2, $zero, 1
	srlv $t3, $t1, $t2
	addi $t1, $zero, 2
	addi $t2, $zero, 1
	srlv $t4, $t1, $t2
	add $t1, $t3, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 60
	addi $t2, $zero, 1
	srlv $t3, $t1, $t2
	addi $t1, $zero, 2
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 60
	addi $t2, $zero, 1
	srlv $t3, $t1, $t2
	addi $t1, $zero, 3
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 60
	addi $t2, $zero, 1
	srlv $t3, $t1, $t2
	addi $t1, $zero, 4
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 60
	addi $t2, $zero, 1
	srlv $t3, $t1, $t2
	addi $t1, $zero, 5
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 60
	addi $t2, $zero, 1
	srlv $t3, $t1, $t2
	addi $t1, $zero, 6
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 60
	addi $t2, $zero, 1
	srlv $t3, $t1, $t2
	addi $t1, $zero, 7
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 60
	addi $t2, $zero, 1
	srlv $t3, $t1, $t2
	addi $t1, $zero, 8
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 60
	addi $t2, $zero, 1
	srlv $t3, $t1, $t2
	addi $t1, $zero, 9
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 40
	addi $t2, $zero, 10
	addi $t3, $zero, 10
	div $t2, $t3
	mfhi $t2
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 40
	addi $t2, $zero, 1
	addi $t3, $zero, 10
	div $t2, $t3
	mfhi $t2
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 40
	addi $t2, $zero, 2
	addi $t3, $zero, 10
	div $t2, $t3
	mfhi $t2
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 40
	addi $t2, $zero, 3
	addi $t3, $zero, 10
	div $t2, $t3
	mfhi $t2
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 40
	addi $t2, $zero, 4
	addi $t3, $zero, 10
	div $t2, $t3
	mfhi $t2
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 40
	addi $t2, $zero, 5
	addi $t3, $zero, 10
	div $t2, $t3
	mfhi $t2
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 40
	addi $t2, $zero, 6
	addi $t3, $zero, 10
	div $t2, $t3
	mfhi $t2
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 40
	addi $t2, $zero, 7
	addi $t3, $zero, 10
	div $t2, $t3
	mfhi $t2
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 40
	addi $t2, $zero, 8
	addi $t3, $zero, 10
	div $t2, $t3
	mfhi $t2
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 40
	addi $t2, $zero, 9
	addi $t3, $zero, 10
	div $t2, $t3
	mfhi $t2
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 186
	addi $t2, $zero, 55
	and $t3, $t1, $t2
	addi $t1, $zero, 0
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 186
	addi $t2, $zero, 55
	and $t3, $t1, $t2
	addi $t1, $zero, 2
	addi $t2, $zero, 1
	srlv $t4, $t1, $t2
	add $t1, $t3, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 186
	addi $t2, $zero, 55
	and $t3, $t1, $t2
	addi $t1, $zero, 2
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 186
	addi $t2, $zero, 55
	and $t3, $t1, $t2
	addi $t1, $zero, 3
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 186
	addi $t2, $zero, 55
	and $t3, $t1, $t2
	addi $t1, $zero, 4
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 186
	addi $t2, $zero, 55
	and $t3, $t1, $t2
	addi $t1, $zero, 5
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 186
	addi $t2, $zero, 55
	and $t3, $t1, $t2
	addi $t1, $zero, 6
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 186
	addi $t2, $zero, 55
	and $t3, $t1, $t2
	addi $t1, $zero, 7
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 186
	addi $t2, $zero, 55
	and $t3, $t1, $t2
	addi $t1, $zero, 8
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 186
	addi $t2, $zero, 55
	and $t3, $t1, $t2
	addi $t1, $zero, 9
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 48
	addi $t2, $zero, 12
	or $t3, $t1, $t2
	addi $t1, $zero, 0
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 48
	addi $t2, $zero, 12
	or $t3, $t1, $t2
	addi $t1, $zero, 2
	addi $t2, $zero, 1
	srlv $t4, $t1, $t2
	add $t1, $t3, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 48
	addi $t2, $zero, 12
	or $t3, $t1, $t2
	addi $t1, $zero, 1
	addi $t2, $zero, 1
	sllv $t4, $t1, $t2
	add $t1, $t3, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 48
	addi $t2, $zero, 12
	or $t3, $t1, $t2
	addi $t1, $zero, 6
	addi $t2, $zero, 1
	srlv $t4, $t1, $t2
	add $t1, $t3, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 48
	addi $t2, $zero, 12
	or $t3, $t1, $t2
	addi $t1, $zero, 2
	addi $t2, $zero, 1
	sllv $t4, $t1, $t2
	add $t1, $t3, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 48
	addi $t2, $zero, 12
	or $t3, $t1, $t2
	addi $t1, $zero, 2
	addi $t2, $zero, 1
	sllv $t4, $t1, $t2
	add $t1, $t3, $t4
	addi $t2, $zero, 2
	addi $t3, $zero, 1
	srlv $t4, $t2, $t3
	add $t2, $t1, $t4
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 48
	addi $t2, $zero, 12
	or $t3, $t1, $t2
	addi $t1, $zero, 3
	addi $t2, $zero, 1
	sllv $t4, $t1, $t2
	add $t1, $t3, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 48
	addi $t2, $zero, 12
	or $t3, $t1, $t2
	addi $t1, $zero, 3
	addi $t2, $zero, 1
	sllv $t4, $t1, $t2
	add $t1, $t3, $t4
	addi $t2, $zero, 2
	addi $t3, $zero, 1
	srlv $t4, $t2, $t3
	add $t2, $t1, $t4
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 48
	addi $t2, $zero, 12
	or $t3, $t1, $t2
	addi $t1, $zero, 2
	addi $t2, $zero, 2
	sllv $t4, $t1, $t2
	add $t1, $t3, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 48
	addi $t2, $zero, 12
	or $t3, $t1, $t2
	addi $t1, $zero, 2
	addi $t2, $zero, 2
	sllv $t4, $t1, $t2
	add $t1, $t3, $t4
	addi $t2, $zero, 2
	addi $t3, $zero, 1
	srlv $t4, $t2, $t3
	add $t2, $t1, $t4
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 173
	addi $t2, $zero, 235
	xor $t3, $t1, $t2
	addi $t1, $zero, 0
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 173
	addi $t2, $zero, 235
	xor $t3, $t1, $t2
	addi $t1, $zero, 2
	addi $t2, $zero, 1
	srlv $t4, $t1, $t2
	add $t1, $t3, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 173
	addi $t2, $zero, 235
	xor $t3, $t1, $t2
	addi $t1, $zero, 2
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 173
	addi $t2, $zero, 235
	xor $t3, $t1, $t2
	addi $t1, $zero, 3
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 173
	addi $t2, $zero, 235
	xor $t3, $t1, $t2
	addi $t1, $zero, 4
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 173
	addi $t2, $zero, 235
	xor $t3, $t1, $t2
	addi $t1, $zero, 5
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 173
	addi $t2, $zero, 235
	xor $t3, $t1, $t2
	addi $t1, $zero, 6
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 173
	addi $t2, $zero, 235
	xor $t3, $t1, $t2
	addi $t1, $zero, 7
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 173
	addi $t2, $zero, 235
	xor $t3, $t1, $t2
	addi $t1, $zero, 8
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 173
	addi $t2, $zero, 235
	xor $t3, $t1, $t2
	addi $t1, $zero, 9
	add $t2, $t3, $t1
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 5
	addi $t3, $zero, 2
	addi $t4, $zero, 1
	srlv $t5, $t3, $t4
	sllv $t3, $t2, $t5
	sub $t2, $t1, $t3
	addi $t1, $zero, 0
	add $t3, $t2, $t1
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 5
	addi $t3, $zero, 2
	addi $t4, $zero, 1
	srlv $t5, $t3, $t4
	sllv $t3, $t2, $t5
	sub $t2, $t1, $t3
	addi $t1, $zero, 2
	addi $t3, $zero, 1
	srlv $t4, $t1, $t3
	add $t1, $t2, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 5
	addi $t3, $zero, 2
	addi $t4, $zero, 1
	srlv $t5, $t3, $t4
	sllv $t3, $t2, $t5
	sub $t2, $t1, $t3
	addi $t1, $zero, 1
	addi $t3, $zero, 1
	sllv $t4, $t1, $t3
	add $t1, $t2, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 5
	addi $t3, $zero, 2
	addi $t4, $zero, 1
	srlv $t5, $t3, $t4
	sllv $t3, $t2, $t5
	sub $t2, $t1, $t3
	addi $t1, $zero, 6
	addi $t3, $zero, 1
	srlv $t4, $t1, $t3
	add $t1, $t2, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 5
	addi $t3, $zero, 1
	sllv $t4, $t2, $t3
	sub $t2, $t1, $t4
	addi $t1, $zero, 2
	addi $t3, $zero, 1
	sllv $t4, $t1, $t3
	add $t1, $t2, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 5
	addi $t3, $zero, 1
	sllv $t4, $t2, $t3
	sub $t2, $t1, $t4
	addi $t1, $zero, 2
	addi $t3, $zero, 2
	addi $t4, $zero, 1
	srlv $t5, $t3, $t4
	sllv $t3, $t1, $t5
	add $t1, $t2, $t3
	addi $t2, $zero, 2
	addi $t3, $zero, 1
	srlv $t4, $t2, $t3
	add $t2, $t1, $t4
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 5
	addi $t3, $zero, 1
	sllv $t4, $t2, $t3
	sub $t2, $t1, $t4
	addi $t1, $zero, 3
	addi $t3, $zero, 1
	sllv $t4, $t1, $t3
	add $t1, $t2, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 5
	addi $t3, $zero, 1
	sllv $t4, $t2, $t3
	sub $t2, $t1, $t4
	addi $t1, $zero, 3
	addi $t3, $zero, 2
	addi $t4, $zero, 1
	srlv $t5, $t3, $t4
	sllv $t3, $t1, $t5
	add $t1, $t2, $t3
	addi $t2, $zero, 2
	addi $t3, $zero, 1
	srlv $t4, $t2, $t3
	add $t2, $t1, $t4
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 5
	addi $t3, $zero, 1
	sllv $t4, $t2, $t3
	sub $t2, $t1, $t4
	addi $t1, $zero, 2
	addi $t3, $zero, 2
	sllv $t4, $t1, $t3
	add $t1, $t2, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 5
	addi $t3, $zero, 1
	sllv $t4, $t2, $t3
	sub $t2, $t1, $t4
	addi $t1, $zero, 2
	addi $t3, $zero, 2
	sllv $t4, $t1, $t3
	add $t1, $t2, $t4
	addi $t2, $zero, 2
	addi $t3, $zero, 1
	srlv $t4, $t2, $t3
	add $t2, $t1, $t4
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 0
	add $t3, $t1, $t2
	mul $t1, $t0, $t3
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 2
	addi $t3, $zero, 1
	srlv $t4, $t2, $t3
	add $t2, $t1, $t4
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 1
	addi $t3, $zero, 1
	sllv $t4, $t2, $t3
	add $t2, $t1, $t4
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 6
	addi $t3, $zero, 1
	srlv $t4, $t2, $t3
	add $t2, $t1, $t4
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 2
	addi $t3, $zero, 2
	addi $t4, $zero, 1
	srlv $t5, $t3, $t4
	sllv $t3, $t2, $t5
	add $t2, $t1, $t3
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 2
	addi $t3, $zero, 1
	sllv $t4, $t2, $t3
	add $t2, $t1, $t4
	addi $t1, $zero, 2
	addi $t3, $zero, 2
	addi $t4, $zero, 2
	addi $t5, $zero, 1
	srlv $t6, $t4, $t5
	srlv $t4, $t3, $t6
	srlv $t3, $t1, $t4
	add $t1, $t2, $t3
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 3
	addi $t3, $zero, 1
	sllv $t4, $t2, $t3
	add $t2, $t1, $t4
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 3
	addi $t3, $zero, 1
	sllv $t4, $t2, $t3
	add $t2, $t1, $t4
	addi $t1, $zero, 2
	addi $t3, $zero, 1
	srlv $t4, $t1, $t3
	add $t1, $t2, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 2
	addi $t3, $zero, 2
	sllv $t4, $t2, $t3
	add $t2, $t1, $t4
	mul $t1, $t0, $t2
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	la $t0, v01
	lw $t1, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v03
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v05
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v07
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v09
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v11
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v13
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v15
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v17
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v19
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v21
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v23
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t1, $t3
	la $t1, v25
	lw $t3, 0($t1)
	add $t1, $t0, $t3
	sw $t1, 0($t2)
	addi $t0, $zero, 1
	addi $t1, $zero, 91
	sub $t2, $zero, $t1
	not $t1, $t2
	addi $t2, $zero, 2
	addi $t3, $zero, 2
	sllv $t4, $t2, $t3
	add $t2, $t1, $t4
	addi $t1, $zero, 2
	addi $t3, $zero, 1
	srlv $t4, $t1, $t3
	add $t1, $t2, $t4
	mul $t2, $t0, $t1
	la $t0, a
	sll $t1, $t2, 2
	add $t1, $t1, $t0
	la $t0, v01
	lw $t2, 0($t0)
	la $t0, v02
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v03
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v04
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v05
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v06
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v07
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v08
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v09
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v10
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v11
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v12
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v13
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v14
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v15
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v16
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v17
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v18
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v19
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v20
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v21
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v22
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v23
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	la $t0, v24
	lw $t3, 0($t0)
	add $t0, $t2, $t3
	la $t2, v25
	lw $t3, 0($t2)
	add $t2, $t0, $t3
	sw $t2, 0($t1)

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

ASSERT:
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

	#loading 2 params
	add $s0, $zero, $a0
	add $s1, $zero, $a1
	sub $t0, $s1, $s0
	beqz $t0, else_2053932224
	jal Panic
	add $t0, $zero, $v0
	j exit_if_2053932224
	else_2053932224:
	exit_if_2053932224:

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
	addi $t0, $zero, 0
	add $s0, $zero, $t0
	j for_teste_2054124752
	for_corpo_2054124752:
	addi $t0, $zero, 1
	mul $t1, $t0, $s0
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	addi $t0, $zero, 0
	sw $t0, 0($t2)
	add $t0, $zero, $s0
	addi $s0, $s0, 1
	for_teste_2054124752:
	addi $t1, $zero, 100
	slt $t2, $s0, $t1
	bnez $t2, for_corpo_2054124752
	jal PopulateArray
	add $t1, $zero, $v0
	addi $t2, $zero, 0
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $s0, $zero, $t2
	j for_teste_2054124560
	for_corpo_2054124560:
	addi $t2, $zero, 1
	mul $t3, $t2, $s0
	la $t2, a
	sll $t4, $t3, 2
	add $t4, $t4, $t2
	lw $t2, 0($t4)
	add $a1, $zero, $t2 # function param v1
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	addi $t3, $zero, 1
	add $a0, $zero, $t3 # function param i
	jal GenValue
	add $t3, $zero, $v0
	add $t4, $t2, $t3
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2 # function param i
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	add $a0, $zero, $t3 # function param v2
	jal ASSERT
	add $t2, $zero, $v0
	addi $t3, $zero, 1
	add $a0, $zero, $t3 # function param i
	jal GenValue
	add $t3, $zero, $v0
	add $t4, $s0, $t3
	add $s0, $zero, $t4
	for_teste_2054124560:
	addi $t3, $zero, 100
	add $a0, $zero, $t3 # function param i
	jal GenValue
	add $t3, $zero, $v0
	slt $t4, $s0, $t3
	bnez $t4, for_corpo_2054124560
	.data
		string_2054123232: .asciiz "O codigo assembly gerado funcionou como o esperado."
	.text
	la $a0, string_2054123232
	addi $v0, $zero, 4
	syscall
	addi $t3, $zero, 666
	add $v0, $zero, $t3

	addi $v0, $zero, 10
	syscall
