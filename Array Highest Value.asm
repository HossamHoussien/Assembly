# OBJECTIVE 	: GET MAX VALUE AND ITS INDEX
# INPUT 	: ARRAY AND ITS LENGTH
#OUTPUT		: MAX VALUE AND ITS INDEX

.data
x: .word 1,2,3,40,5,6,7,8,9,10
len: .word 10

.text

la $s0, x				# BASE ADDRESS
lw $s1,len				# LENGTH
addi $s1,$s1,-1				# LENGTH - 1
addi $t0,$zero,0			# i = 0	
add $s7, $zero,-1000			# RESULT = 0
			
LOOP:

sll $t1,$t0,2
add $t1,$t1,$s0
lw $t5,0($t1)

ble $t5,$s7,UPDATE
move $s7,$t5
move $s6,$t0

UPDATE:
addi $t0,$t0,1
bgt $t0,$s1,EXIT
j LOOP

EXIT: