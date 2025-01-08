.text
.globl main


.data
	v10: .word 0
	v01: .word 0
	v20: .word 0
	v11: .word 0
	v02: .word 0
	v21: .word 0
	a: .space 400
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
		string_2144864304: .asciiz "\n\n"
	.text
	la $a0, string_2144864304
	addi $v0, $zero, 4
	syscall
	.data
		string_2144864464: .asciiz "                 "
	.text
	la $a0, string_2144864464
	addi $v0, $zero, 4
	syscall
	.data
		string_2144864624: .asciiz "#######\n"
	.text
	la $a0, string_2144864624
	addi $v0, $zero, 4
	syscall
	.data
		string_2144864784: .asciiz "             "
	.text
	la $a0, string_2144864784
	addi $v0, $zero, 4
	syscall
	.data
		string_2144864944: .asciiz "###############\n"
	.text
	la $a0, string_2144864944
	addi $v0, $zero, 4
	syscall
	.data
		string_2144865104: .asciiz "          "
	.text
	la $a0, string_2144865104
	addi $v0, $zero, 4
	syscall
	.data
		string_2144865264: .asciiz "#####################\n"
	.text
	la $a0, string_2144865264
	addi $v0, $zero, 4
	syscall
	.data
		string_2144865440: .asciiz "         "
	.text
	la $a0, string_2144865440
	addi $v0, $zero, 4
	syscall
	.data
		string_2144865600: .asciiz "#######################\n"
	.text
	la $a0, string_2144865600
	addi $v0, $zero, 4
	syscall
	.data
		string_2144865776: .asciiz "        "
	.text
	la $a0, string_2144865776
	addi $v0, $zero, 4
	syscall
	.data
		string_2144865936: .asciiz "#########################\n"
	.text
	la $a0, string_2144865936
	addi $v0, $zero, 4
	syscall
	.data
		string_2144866112: .asciiz "       "
	.text
	la $a0, string_2144866112
	addi $v0, $zero, 4
	syscall
	.data
		string_2144866272: .asciiz "###########################\n"
	.text
	la $a0, string_2144866272
	addi $v0, $zero, 4
	syscall
	.data
		string_2144866448: .asciiz "       "
	.text
	la $a0, string_2144866448
	addi $v0, $zero, 4
	syscall
	.data
		string_2144866608: .asciiz "###########################\n"
	.text
	la $a0, string_2144866608
	addi $v0, $zero, 4
	syscall
	.data
		string_2144866784: .asciiz "       "
	.text
	la $a0, string_2144866784
	addi $v0, $zero, 4
	syscall
	.data
		string_2144866944: .asciiz "########"
	.text
	la $a0, string_2144866944
	addi $v0, $zero, 4
	syscall
	.data
		string_2144867104: .asciiz "   "
	.text
	la $a0, string_2144867104
	addi $v0, $zero, 4
	syscall
	.data
		string_2144867264: .asciiz "#####"
	.text
	la $a0, string_2144867264
	addi $v0, $zero, 4
	syscall
	.data
		string_2144867424: .asciiz "   "
	.text
	la $a0, string_2144867424
	addi $v0, $zero, 4
	syscall
	.data
		string_2144867584: .asciiz "########\n"
	.text
	la $a0, string_2144867584
	addi $v0, $zero, 4
	syscall
	.data
		string_2144867744: .asciiz "       "
	.text
	la $a0, string_2144867744
	addi $v0, $zero, 4
	syscall
	.data
		string_2144867904: .asciiz "######"
	.text
	la $a0, string_2144867904
	addi $v0, $zero, 4
	syscall
	.data
		string_2144868064: .asciiz "      "
	.text
	la $a0, string_2144868064
	addi $v0, $zero, 4
	syscall
	.data
		string_2144868224: .asciiz "###"
	.text
	la $a0, string_2144868224
	addi $v0, $zero, 4
	syscall
	.data
		string_2144868384: .asciiz "       "
	.text
	la $a0, string_2144868384
	addi $v0, $zero, 4
	syscall
	.data
		string_2144868544: .asciiz "#####\n"
	.text
	la $a0, string_2144868544
	addi $v0, $zero, 4
	syscall
	.data
		string_2144878736: .asciiz "        "
	.text
	la $a0, string_2144878736
	addi $v0, $zero, 4
	syscall
	.data
		string_2144878896: .asciiz "####"
	.text
	la $a0, string_2144878896
	addi $v0, $zero, 4
	syscall
	.data
		string_2144879056: .asciiz "       "
	.text
	la $a0, string_2144879056
	addi $v0, $zero, 4
	syscall
	.data
		string_2144879216: .asciiz "###"
	.text
	la $a0, string_2144879216
	addi $v0, $zero, 4
	syscall
	.data
		string_2144879376: .asciiz "       "
	.text
	la $a0, string_2144879376
	addi $v0, $zero, 4
	syscall
	.data
		string_2144879536: .asciiz "####\n"
	.text
	la $a0, string_2144879536
	addi $v0, $zero, 4
	syscall
	.data
		string_2144879696: .asciiz "        "
	.text
	la $a0, string_2144879696
	addi $v0, $zero, 4
	syscall
	.data
		string_2144879856: .asciiz "####"
	.text
	la $a0, string_2144879856
	addi $v0, $zero, 4
	syscall
	.data
		string_2144880016: .asciiz "      "
	.text
	la $a0, string_2144880016
	addi $v0, $zero, 4
	syscall
	.data
		string_2144880176: .asciiz "#####"
	.text
	la $a0, string_2144880176
	addi $v0, $zero, 4
	syscall
	.data
		string_2144880336: .asciiz "      "
	.text
	la $a0, string_2144880336
	addi $v0, $zero, 4
	syscall
	.data
		string_2144880496: .asciiz "####\n"
	.text
	la $a0, string_2144880496
	addi $v0, $zero, 4
	syscall
	.data
		string_2144880656: .asciiz "         "
	.text
	la $a0, string_2144880656
	addi $v0, $zero, 4
	syscall
	.data
		string_2144880816: .asciiz "##########"
	.text
	la $a0, string_2144880816
	addi $v0, $zero, 4
	syscall
	.data
		string_2144880976: .asciiz "   "
	.text
	la $a0, string_2144880976
	addi $v0, $zero, 4
	syscall
	.data
		string_2144881136: .asciiz "##########\n"
	.text
	la $a0, string_2144881136
	addi $v0, $zero, 4
	syscall
	.data
		string_2144881296: .asciiz "          "
	.text
	la $a0, string_2144881296
	addi $v0, $zero, 4
	syscall
	.data
		string_2144881456: .asciiz "#########"
	.text
	la $a0, string_2144881456
	addi $v0, $zero, 4
	syscall
	.data
		string_2144881616: .asciiz "   "
	.text
	la $a0, string_2144881616
	addi $v0, $zero, 4
	syscall
	.data
		string_2144881776: .asciiz "#########\n"
	.text
	la $a0, string_2144881776
	addi $v0, $zero, 4
	syscall
	.data
		string_2144881936: .asciiz "            "
	.text
	la $a0, string_2144881936
	addi $v0, $zero, 4
	syscall
	.data
		string_2144882096: .asciiz "#################\n"
	.text
	la $a0, string_2144882096
	addi $v0, $zero, 4
	syscall
	.data
		string_2144882256: .asciiz "             "
	.text
	la $a0, string_2144882256
	addi $v0, $zero, 4
	syscall
	.data
		string_2144882416: .asciiz "###############\n"
	.text
	la $a0, string_2144882416
	addi $v0, $zero, 4
	syscall
	.data
		string_2144882576: .asciiz "  "
	.text
	la $a0, string_2144882576
	addi $v0, $zero, 4
	syscall
	.data
		string_2144882736: .asciiz "###        "
	.text
	la $a0, string_2144882736
	addi $v0, $zero, 4
	syscall
	.data
		string_2144882896: .asciiz "####"
	.text
	la $a0, string_2144882896
	addi $v0, $zero, 4
	syscall
	.data
		string_2144883056: .asciiz " "
	.text
	la $a0, string_2144883056
	addi $v0, $zero, 4
	syscall
	.data
		string_2144883216: .asciiz "#"
	.text
	la $a0, string_2144883216
	addi $v0, $zero, 4
	syscall
	.data
		string_2144883376: .asciiz " "
	.text
	la $a0, string_2144883376
	addi $v0, $zero, 4
	syscall
	.data
		string_2144883536: .asciiz "#"
	.text
	la $a0, string_2144883536
	addi $v0, $zero, 4
	syscall
	.data
		string_2144883696: .asciiz " "
	.text
	la $a0, string_2144883696
	addi $v0, $zero, 4
	syscall
	.data
		string_2144883856: .asciiz "#"
	.text
	la $a0, string_2144883856
	addi $v0, $zero, 4
	syscall
	.data
		string_2144868672: .asciiz " "
	.text
	la $a0, string_2144868672
	addi $v0, $zero, 4
	syscall
	.data
		string_2144868832: .asciiz "####"
	.text
	la $a0, string_2144868832
	addi $v0, $zero, 4
	syscall
	.data
		string_2144868992: .asciiz "       "
	.text
	la $a0, string_2144868992
	addi $v0, $zero, 4
	syscall
	.data
		string_2144869152: .asciiz "###\n"
	.text
	la $a0, string_2144869152
	addi $v0, $zero, 4
	syscall
	.data
		string_2144869312: .asciiz " "
	.text
	la $a0, string_2144869312
	addi $v0, $zero, 4
	syscall
	.data
		string_2144869472: .asciiz "#####"
	.text
	la $a0, string_2144869472
	addi $v0, $zero, 4
	syscall
	.data
		string_2144869632: .asciiz "        "
	.text
	la $a0, string_2144869632
	addi $v0, $zero, 4
	syscall
	.data
		string_2144869792: .asciiz "#############"
	.text
	la $a0, string_2144869792
	addi $v0, $zero, 4
	syscall
	.data
		string_2144869952: .asciiz "       "
	.text
	la $a0, string_2144869952
	addi $v0, $zero, 4
	syscall
	.data
		string_2144870112: .asciiz "#####\n"
	.text
	la $a0, string_2144870112
	addi $v0, $zero, 4
	syscall
	.data
		string_2144870272: .asciiz "  "
	.text
	la $a0, string_2144870272
	addi $v0, $zero, 4
	syscall
	.data
		string_2144870432: .asciiz "#######"
	.text
	la $a0, string_2144870432
	addi $v0, $zero, 4
	syscall
	.data
		string_2144870592: .asciiz "      "
	.text
	la $a0, string_2144870592
	addi $v0, $zero, 4
	syscall
	.data
		string_2144870752: .asciiz "###########"
	.text
	la $a0, string_2144870752
	addi $v0, $zero, 4
	syscall
	.data
		string_2144870912: .asciiz "     "
	.text
	la $a0, string_2144870912
	addi $v0, $zero, 4
	syscall
	.data
		string_2144871072: .asciiz "########\n"
	.text
	la $a0, string_2144871072
	addi $v0, $zero, 4
	syscall
	.data
		string_2144871232: .asciiz "##############"
	.text
	la $a0, string_2144871232
	addi $v0, $zero, 4
	syscall
	.data
		string_2144871392: .asciiz "    "
	.text
	la $a0, string_2144871392
	addi $v0, $zero, 4
	syscall
	.data
		string_2144871552: .asciiz "#####"
	.text
	la $a0, string_2144871552
	addi $v0, $zero, 4
	syscall
	.data
		string_2144871712: .asciiz "    "
	.text
	la $a0, string_2144871712
	addi $v0, $zero, 4
	syscall
	.data
		string_2144871872: .asciiz "##############\n"
	.text
	la $a0, string_2144871872
	addi $v0, $zero, 4
	syscall
	.data
		string_2144872032: .asciiz "####################"
	.text
	la $a0, string_2144872032
	addi $v0, $zero, 4
	syscall
	.data
		string_2144872192: .asciiz "   "
	.text
	la $a0, string_2144872192
	addi $v0, $zero, 4
	syscall
	.data
		string_2144872352: .asciiz "##################\n"
	.text
	la $a0, string_2144872352
	addi $v0, $zero, 4
	syscall
	.data
		string_2144872512: .asciiz " "
	.text
	la $a0, string_2144872512
	addi $v0, $zero, 4
	syscall
	.data
		string_2144872672: .asciiz "###"
	.text
	la $a0, string_2144872672
	addi $v0, $zero, 4
	syscall
	.data
		string_2144872832: .asciiz "      "
	.text
	la $a0, string_2144872832
	addi $v0, $zero, 4
	syscall
	.data
		string_2144872992: .asciiz "###############"
	.text
	la $a0, string_2144872992
	addi $v0, $zero, 4
	syscall
	.data
		string_2144873152: .asciiz " "
	.text
	la $a0, string_2144873152
	addi $v0, $zero, 4
	syscall
	.data
		string_2144873312: .asciiz "######\n"
	.text
	la $a0, string_2144873312
	addi $v0, $zero, 4
	syscall
	.data
		string_2144873472: .asciiz "           "
	.text
	la $a0, string_2144873472
	addi $v0, $zero, 4
	syscall
	.data
		string_2144873632: .asciiz "####"
	.text
	la $a0, string_2144873632
	addi $v0, $zero, 4
	syscall
	.data
		string_2144873792: .asciiz " "
	.text
	la $a0, string_2144873792
	addi $v0, $zero, 4
	syscall
	.data
		string_2144873952: .asciiz "###############\n"
	.text
	la $a0, string_2144873952
	addi $v0, $zero, 4
	syscall
	.data
		string_2144874112: .asciiz "  "
	.text
	la $a0, string_2144874112
	addi $v0, $zero, 4
	syscall
	.data
		string_2144874272: .asciiz "##################"
	.text
	la $a0, string_2144874272
	addi $v0, $zero, 4
	syscall
	.data
		string_2144874432: .asciiz " "
	.text
	la $a0, string_2144874432
	addi $v0, $zero, 4
	syscall
	.data
		string_2144874592: .asciiz "###################\n"
	.text
	la $a0, string_2144874592
	addi $v0, $zero, 4
	syscall
	.data
		string_2144874752: .asciiz "  "
	.text
	la $a0, string_2144874752
	addi $v0, $zero, 4
	syscall
	.data
		string_2144874912: .asciiz "##############"
	.text
	la $a0, string_2144874912
	addi $v0, $zero, 4
	syscall
	.data
		string_2144875072: .asciiz "           "
	.text
	la $a0, string_2144875072
	addi $v0, $zero, 4
	syscall
	.data
		string_2144875232: .asciiz "##############\n"
	.text
	la $a0, string_2144875232
	addi $v0, $zero, 4
	syscall
	.data
		string_2144875392: .asciiz "   "
	.text
	la $a0, string_2144875392
	addi $v0, $zero, 4
	syscall
	.data
		string_2144875552: .asciiz "#######"
	.text
	la $a0, string_2144875552
	addi $v0, $zero, 4
	syscall
	.data
		string_2144875712: .asciiz "                      "
	.text
	la $a0, string_2144875712
	addi $v0, $zero, 4
	syscall
	.data
		string_2144875888: .asciiz "########\n"
	.text
	la $a0, string_2144875888
	addi $v0, $zero, 4
	syscall
	.data
		string_2144876048: .asciiz "     "
	.text
	la $a0, string_2144876048
	addi $v0, $zero, 4
	syscall
	.data
		string_2144876208: .asciiz "####"
	.text
	la $a0, string_2144876208
	addi $v0, $zero, 4
	syscall
	.data
		string_2144876368: .asciiz "                         "
	.text
	la $a0, string_2144876368
	addi $v0, $zero, 4
	syscall
	.data
		string_2144876544: .asciiz "#####\n"
	.text
	la $a0, string_2144876544
	addi $v0, $zero, 4
	syscall
	.data
		string_2144876704: .asciiz "\n\nFATAL ERROR: O codigo assembly gerado possui ao menos um Erro.\n"
	.text
	la $a0, string_2144876704
	addi $v0, $zero, 4
	syscall
	addi $t0, $zero, 666

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
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v01
	sw $t0, 0($t1)
	la $t0, v02
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v02
	sw $t0, 0($t1)
	la $t0, v03
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v03
	sw $t0, 0($t1)
	la $t0, v04
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v04
	sw $t0, 0($t1)
	la $t0, v05
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v05
	sw $t0, 0($t1)
	la $t0, v06
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v06
	sw $t0, 0($t1)
	la $t0, v07
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v07
	sw $t0, 0($t1)
	la $t0, v08
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v08
	sw $t0, 0($t1)
	la $t0, v09
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v09
	sw $t0, 0($t1)
	la $t0, v10
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v10
	sw $t0, 0($t1)
	la $t0, v11
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v11
	sw $t0, 0($t1)
	la $t0, v12
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v12
	sw $t0, 0($t1)
	la $t0, v13
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v13
	sw $t0, 0($t1)
	la $t0, v14
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v14
	sw $t0, 0($t1)
	la $t0, v15
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v15
	sw $t0, 0($t1)
	la $t0, v16
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v16
	sw $t0, 0($t1)
	la $t0, v17
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v17
	sw $t0, 0($t1)
	la $t0, v18
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v18
	sw $t0, 0($t1)
	la $t0, v19
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v19
	sw $t0, 0($t1)
	la $t0, v20
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v20
	sw $t0, 0($t1)
	la $t0, v21
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v21
	sw $t0, 0($t1)
	la $t0, v22
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v22
	sw $t0, 0($t1)
	la $t0, v23
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v23
	sw $t0, 0($t1)
	la $t0, v24
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
	jal GenValue
	add $t0, $zero, $v0
	la $t1, v24
	sw $t0, 0($t1)
	la $t0, v25
	lw $t1, 0($t0)
	addi $t0, $zero, 1
	add $a0, $zero, $t0
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

	add $s0, $zero, $a0
	add $s1, $zero, $a1
	sub $t0, $s1, $s0
	beqz $t0, senao_2144430912
	jal Panic
	add $t0, $zero, $v0
	j exit_if_2144430912
	senao_2144430912:
	exit_if_2144430912:

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
	j parat_2144238384
	parac_2144238384:
	addi $t0, $zero, 1
	mul $t1, $t0, $s0
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	addi $t0, $zero, 0
	sw $t0, 0($t2)
	add $t0, $zero, $s0
	addi $s0, $s0, 1
	parat_2144238384:
	addi $t1, $zero, 100
	slt $t2, $s0, $t1
	bnez $t2, parac_2144238384
	jal PopulateArray
	add $t1, $zero, $v0
	addi $t2, $zero, 0
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $s0, $zero, $t2
	j parat_2144238576
	parac_2144238576:
	addi $t2, $zero, 1
	mul $t3, $t2, $s0
	la $t2, a
	sll $t4, $t3, 2
	add $t4, $t4, $t2
	lw $t2, 0($t4)
	add $a1, $zero, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	addi $t3, $zero, 1
	add $a0, $zero, $t3
	jal GenValue
	add $t3, $zero, $v0
	add $t4, $t2, $t3
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t4, $t3, $t2
	addi $t2, $zero, 1
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $t3, $t4, $t2
	add $a0, $zero, $t3
	jal ASSERT
	add $t2, $zero, $v0
	addi $t3, $zero, 1
	add $a0, $zero, $t3
	jal GenValue
	add $t3, $zero, $v0
	add $t4, $s0, $t3
	add $s0, $zero, $t4
	parat_2144238576:
	addi $t3, $zero, 100
	add $a0, $zero, $t3
	jal GenValue
	add $t3, $zero, $v0
	slt $t4, $s0, $t3
	bnez $t4, parac_2144238576
	.data
		string_2144239904: .asciiz "O codigo assembly gerado funcionou como o esperado."
	.text
	la $a0, string_2144239904
	addi $v0, $zero, 4
	syscall
	addi $t3, $zero, 666
	add $v0, $zero, $t3

	addi $v0, $zero, 10
	syscall
