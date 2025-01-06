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
		string_1247280: .asciiz "\n\n"
	.text
	la $a0, string_1247280
	addi $v0, $zero, 4
	syscall
	.data
		string_1247440: .asciiz "                 "
	.text
	la $a0, string_1247440
	addi $v0, $zero, 4
	syscall
	.data
		string_1247600: .asciiz "#######\n"
	.text
	la $a0, string_1247600
	addi $v0, $zero, 4
	syscall
	.data
		string_1247760: .asciiz "             "
	.text
	la $a0, string_1247760
	addi $v0, $zero, 4
	syscall
	.data
		string_1247920: .asciiz "###############\n"
	.text
	la $a0, string_1247920
	addi $v0, $zero, 4
	syscall
	.data
		string_1248080: .asciiz "          "
	.text
	la $a0, string_1248080
	addi $v0, $zero, 4
	syscall
	.data
		string_1248240: .asciiz "#####################\n"
	.text
	la $a0, string_1248240
	addi $v0, $zero, 4
	syscall
	.data
		string_1248416: .asciiz "         "
	.text
	la $a0, string_1248416
	addi $v0, $zero, 4
	syscall
	.data
		string_1248576: .asciiz "#######################\n"
	.text
	la $a0, string_1248576
	addi $v0, $zero, 4
	syscall
	.data
		string_1248752: .asciiz "        "
	.text
	la $a0, string_1248752
	addi $v0, $zero, 4
	syscall
	.data
		string_1248912: .asciiz "#########################\n"
	.text
	la $a0, string_1248912
	addi $v0, $zero, 4
	syscall
	.data
		string_1249088: .asciiz "       "
	.text
	la $a0, string_1249088
	addi $v0, $zero, 4
	syscall
	.data
		string_1249248: .asciiz "###########################\n"
	.text
	la $a0, string_1249248
	addi $v0, $zero, 4
	syscall
	.data
		string_1249424: .asciiz "       "
	.text
	la $a0, string_1249424
	addi $v0, $zero, 4
	syscall
	.data
		string_1249584: .asciiz "###########################\n"
	.text
	la $a0, string_1249584
	addi $v0, $zero, 4
	syscall
	.data
		string_1249760: .asciiz "       "
	.text
	la $a0, string_1249760
	addi $v0, $zero, 4
	syscall
	.data
		string_1249920: .asciiz "########"
	.text
	la $a0, string_1249920
	addi $v0, $zero, 4
	syscall
	.data
		string_1250080: .asciiz "   "
	.text
	la $a0, string_1250080
	addi $v0, $zero, 4
	syscall
	.data
		string_1250240: .asciiz "#####"
	.text
	la $a0, string_1250240
	addi $v0, $zero, 4
	syscall
	.data
		string_1250400: .asciiz "   "
	.text
	la $a0, string_1250400
	addi $v0, $zero, 4
	syscall
	.data
		string_1250560: .asciiz "########\n"
	.text
	la $a0, string_1250560
	addi $v0, $zero, 4
	syscall
	.data
		string_1250720: .asciiz "       "
	.text
	la $a0, string_1250720
	addi $v0, $zero, 4
	syscall
	.data
		string_1250880: .asciiz "######"
	.text
	la $a0, string_1250880
	addi $v0, $zero, 4
	syscall
	.data
		string_1251040: .asciiz "      "
	.text
	la $a0, string_1251040
	addi $v0, $zero, 4
	syscall
	.data
		string_1251200: .asciiz "###"
	.text
	la $a0, string_1251200
	addi $v0, $zero, 4
	syscall
	.data
		string_1251360: .asciiz "       "
	.text
	la $a0, string_1251360
	addi $v0, $zero, 4
	syscall
	.data
		string_1251520: .asciiz "#####\n"
	.text
	la $a0, string_1251520
	addi $v0, $zero, 4
	syscall
	.data
		string_1261712: .asciiz "        "
	.text
	la $a0, string_1261712
	addi $v0, $zero, 4
	syscall
	.data
		string_1261872: .asciiz "####"
	.text
	la $a0, string_1261872
	addi $v0, $zero, 4
	syscall
	.data
		string_1262032: .asciiz "       "
	.text
	la $a0, string_1262032
	addi $v0, $zero, 4
	syscall
	.data
		string_1262192: .asciiz "###"
	.text
	la $a0, string_1262192
	addi $v0, $zero, 4
	syscall
	.data
		string_1262352: .asciiz "       "
	.text
	la $a0, string_1262352
	addi $v0, $zero, 4
	syscall
	.data
		string_1262512: .asciiz "####\n"
	.text
	la $a0, string_1262512
	addi $v0, $zero, 4
	syscall
	.data
		string_1262672: .asciiz "        "
	.text
	la $a0, string_1262672
	addi $v0, $zero, 4
	syscall
	.data
		string_1262832: .asciiz "####"
	.text
	la $a0, string_1262832
	addi $v0, $zero, 4
	syscall
	.data
		string_1262992: .asciiz "      "
	.text
	la $a0, string_1262992
	addi $v0, $zero, 4
	syscall
	.data
		string_1263152: .asciiz "#####"
	.text
	la $a0, string_1263152
	addi $v0, $zero, 4
	syscall
	.data
		string_1263312: .asciiz "      "
	.text
	la $a0, string_1263312
	addi $v0, $zero, 4
	syscall
	.data
		string_1263472: .asciiz "####\n"
	.text
	la $a0, string_1263472
	addi $v0, $zero, 4
	syscall
	.data
		string_1263632: .asciiz "         "
	.text
	la $a0, string_1263632
	addi $v0, $zero, 4
	syscall
	.data
		string_1263792: .asciiz "##########"
	.text
	la $a0, string_1263792
	addi $v0, $zero, 4
	syscall
	.data
		string_1263952: .asciiz "   "
	.text
	la $a0, string_1263952
	addi $v0, $zero, 4
	syscall
	.data
		string_1264112: .asciiz "##########\n"
	.text
	la $a0, string_1264112
	addi $v0, $zero, 4
	syscall
	.data
		string_1264272: .asciiz "          "
	.text
	la $a0, string_1264272
	addi $v0, $zero, 4
	syscall
	.data
		string_1264432: .asciiz "#########"
	.text
	la $a0, string_1264432
	addi $v0, $zero, 4
	syscall
	.data
		string_1264592: .asciiz "   "
	.text
	la $a0, string_1264592
	addi $v0, $zero, 4
	syscall
	.data
		string_1264752: .asciiz "#########\n"
	.text
	la $a0, string_1264752
	addi $v0, $zero, 4
	syscall
	.data
		string_1264912: .asciiz "            "
	.text
	la $a0, string_1264912
	addi $v0, $zero, 4
	syscall
	.data
		string_1265072: .asciiz "#################\n"
	.text
	la $a0, string_1265072
	addi $v0, $zero, 4
	syscall
	.data
		string_1265232: .asciiz "             "
	.text
	la $a0, string_1265232
	addi $v0, $zero, 4
	syscall
	.data
		string_1265392: .asciiz "###############\n"
	.text
	la $a0, string_1265392
	addi $v0, $zero, 4
	syscall
	.data
		string_1265552: .asciiz "  "
	.text
	la $a0, string_1265552
	addi $v0, $zero, 4
	syscall
	.data
		string_1265712: .asciiz "###        "
	.text
	la $a0, string_1265712
	addi $v0, $zero, 4
	syscall
	.data
		string_1265872: .asciiz "####"
	.text
	la $a0, string_1265872
	addi $v0, $zero, 4
	syscall
	.data
		string_1266032: .asciiz " "
	.text
	la $a0, string_1266032
	addi $v0, $zero, 4
	syscall
	.data
		string_1266192: .asciiz "#"
	.text
	la $a0, string_1266192
	addi $v0, $zero, 4
	syscall
	.data
		string_1266352: .asciiz " "
	.text
	la $a0, string_1266352
	addi $v0, $zero, 4
	syscall
	.data
		string_1266512: .asciiz "#"
	.text
	la $a0, string_1266512
	addi $v0, $zero, 4
	syscall
	.data
		string_1266672: .asciiz " "
	.text
	la $a0, string_1266672
	addi $v0, $zero, 4
	syscall
	.data
		string_1266832: .asciiz "#"
	.text
	la $a0, string_1266832
	addi $v0, $zero, 4
	syscall
	.data
		string_1251648: .asciiz " "
	.text
	la $a0, string_1251648
	addi $v0, $zero, 4
	syscall
	.data
		string_1251808: .asciiz "####"
	.text
	la $a0, string_1251808
	addi $v0, $zero, 4
	syscall
	.data
		string_1251968: .asciiz "       "
	.text
	la $a0, string_1251968
	addi $v0, $zero, 4
	syscall
	.data
		string_1252128: .asciiz "###\n"
	.text
	la $a0, string_1252128
	addi $v0, $zero, 4
	syscall
	.data
		string_1252288: .asciiz " "
	.text
	la $a0, string_1252288
	addi $v0, $zero, 4
	syscall
	.data
		string_1252448: .asciiz "#####"
	.text
	la $a0, string_1252448
	addi $v0, $zero, 4
	syscall
	.data
		string_1252608: .asciiz "        "
	.text
	la $a0, string_1252608
	addi $v0, $zero, 4
	syscall
	.data
		string_1252768: .asciiz "#############"
	.text
	la $a0, string_1252768
	addi $v0, $zero, 4
	syscall
	.data
		string_1252928: .asciiz "       "
	.text
	la $a0, string_1252928
	addi $v0, $zero, 4
	syscall
	.data
		string_1253088: .asciiz "#####\n"
	.text
	la $a0, string_1253088
	addi $v0, $zero, 4
	syscall
	.data
		string_1253248: .asciiz "  "
	.text
	la $a0, string_1253248
	addi $v0, $zero, 4
	syscall
	.data
		string_1253408: .asciiz "#######"
	.text
	la $a0, string_1253408
	addi $v0, $zero, 4
	syscall
	.data
		string_1253568: .asciiz "      "
	.text
	la $a0, string_1253568
	addi $v0, $zero, 4
	syscall
	.data
		string_1253728: .asciiz "###########"
	.text
	la $a0, string_1253728
	addi $v0, $zero, 4
	syscall
	.data
		string_1253888: .asciiz "     "
	.text
	la $a0, string_1253888
	addi $v0, $zero, 4
	syscall
	.data
		string_1254048: .asciiz "########\n"
	.text
	la $a0, string_1254048
	addi $v0, $zero, 4
	syscall
	.data
		string_1254208: .asciiz "##############"
	.text
	la $a0, string_1254208
	addi $v0, $zero, 4
	syscall
	.data
		string_1254368: .asciiz "    "
	.text
	la $a0, string_1254368
	addi $v0, $zero, 4
	syscall
	.data
		string_1254528: .asciiz "#####"
	.text
	la $a0, string_1254528
	addi $v0, $zero, 4
	syscall
	.data
		string_1254688: .asciiz "    "
	.text
	la $a0, string_1254688
	addi $v0, $zero, 4
	syscall
	.data
		string_1254848: .asciiz "##############\n"
	.text
	la $a0, string_1254848
	addi $v0, $zero, 4
	syscall
	.data
		string_1255008: .asciiz "####################"
	.text
	la $a0, string_1255008
	addi $v0, $zero, 4
	syscall
	.data
		string_1255168: .asciiz "   "
	.text
	la $a0, string_1255168
	addi $v0, $zero, 4
	syscall
	.data
		string_1255328: .asciiz "##################\n"
	.text
	la $a0, string_1255328
	addi $v0, $zero, 4
	syscall
	.data
		string_1255488: .asciiz " "
	.text
	la $a0, string_1255488
	addi $v0, $zero, 4
	syscall
	.data
		string_1255648: .asciiz "###"
	.text
	la $a0, string_1255648
	addi $v0, $zero, 4
	syscall
	.data
		string_1255808: .asciiz "      "
	.text
	la $a0, string_1255808
	addi $v0, $zero, 4
	syscall
	.data
		string_1255968: .asciiz "###############"
	.text
	la $a0, string_1255968
	addi $v0, $zero, 4
	syscall
	.data
		string_1256128: .asciiz " "
	.text
	la $a0, string_1256128
	addi $v0, $zero, 4
	syscall
	.data
		string_1256288: .asciiz "######\n"
	.text
	la $a0, string_1256288
	addi $v0, $zero, 4
	syscall
	.data
		string_1256448: .asciiz "           "
	.text
	la $a0, string_1256448
	addi $v0, $zero, 4
	syscall
	.data
		string_1256608: .asciiz "####"
	.text
	la $a0, string_1256608
	addi $v0, $zero, 4
	syscall
	.data
		string_1256768: .asciiz " "
	.text
	la $a0, string_1256768
	addi $v0, $zero, 4
	syscall
	.data
		string_1256928: .asciiz "###############\n"
	.text
	la $a0, string_1256928
	addi $v0, $zero, 4
	syscall
	.data
		string_1257088: .asciiz "  "
	.text
	la $a0, string_1257088
	addi $v0, $zero, 4
	syscall
	.data
		string_1257248: .asciiz "##################"
	.text
	la $a0, string_1257248
	addi $v0, $zero, 4
	syscall
	.data
		string_1257408: .asciiz " "
	.text
	la $a0, string_1257408
	addi $v0, $zero, 4
	syscall
	.data
		string_1257568: .asciiz "###################\n"
	.text
	la $a0, string_1257568
	addi $v0, $zero, 4
	syscall
	.data
		string_1257728: .asciiz "  "
	.text
	la $a0, string_1257728
	addi $v0, $zero, 4
	syscall
	.data
		string_1257888: .asciiz "##############"
	.text
	la $a0, string_1257888
	addi $v0, $zero, 4
	syscall
	.data
		string_1258048: .asciiz "           "
	.text
	la $a0, string_1258048
	addi $v0, $zero, 4
	syscall
	.data
		string_1258208: .asciiz "##############\n"
	.text
	la $a0, string_1258208
	addi $v0, $zero, 4
	syscall
	.data
		string_1258368: .asciiz "   "
	.text
	la $a0, string_1258368
	addi $v0, $zero, 4
	syscall
	.data
		string_1258528: .asciiz "#######"
	.text
	la $a0, string_1258528
	addi $v0, $zero, 4
	syscall
	.data
		string_1258688: .asciiz "                      "
	.text
	la $a0, string_1258688
	addi $v0, $zero, 4
	syscall
	.data
		string_1258864: .asciiz "########\n"
	.text
	la $a0, string_1258864
	addi $v0, $zero, 4
	syscall
	.data
		string_1259024: .asciiz "     "
	.text
	la $a0, string_1259024
	addi $v0, $zero, 4
	syscall
	.data
		string_1259184: .asciiz "####"
	.text
	la $a0, string_1259184
	addi $v0, $zero, 4
	syscall
	.data
		string_1259344: .asciiz "                         "
	.text
	la $a0, string_1259344
	addi $v0, $zero, 4
	syscall
	.data
		string_1259520: .asciiz "#####\n"
	.text
	la $a0, string_1259520
	addi $v0, $zero, 4
	syscall
	.data
		string_1259680: .asciiz "\n\nFATAL ERROR: O codigo assembly gerado possui ao menos um Erro.\n"
	.text
	la $a0, string_1259680
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
	beqz $t0, senao_6919360
	jal Panic
	add $t0, $zero, $v0
	j exit_if_6919360
	senao_6919360:
	exit_if_6919360:

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
	j parat_7111888
	parac_7111888:
	addi $t0, $zero, 1
	mul $t1, $t0, $s0
	la $t0, a
	sll $t2, $t1, 2
	add $t2, $t2, $t0
	addi $t0, $zero, 0
	sw $t0, 0($t2)
	add $t0, $zero, $s0
	addi $s0, $s0, 1
	parat_7111888:
	addi $t1, $zero, 100
	slt $t2, $s0, $t1
	bnez $t2, parac_7111888
	jal PopulateArray
	add $t1, $zero, $v0
	addi $t2, $zero, 0
	add $a0, $zero, $t2
	jal GenValue
	add $t2, $zero, $v0
	add $s0, $zero, $t2
	j parat_7111696
	parac_7111696:
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
	parat_7111696:
	addi $t3, $zero, 100
	add $a0, $zero, $t3
	jal GenValue
	add $t3, $zero, $v0
	slt $t4, $s0, $t3
	bnez $t4, parac_7111696
	.data
		string_7110368: .asciiz "O codigo assembly gerado funcionou como o esperado."
	.text
	la $a0, string_7110368
	addi $v0, $zero, 4
	syscall
	addi $t3, $zero, 666
	add $v0, $zero, $t3

	addi $v0, $zero, 10
	syscall
