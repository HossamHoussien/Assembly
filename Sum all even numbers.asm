.data
x: .word 1,2,3,5,3,8,9
len: .word 7

.text
la $s0,x			# BASE ADDRESS
lw $s1,len			# LENGTH
addi $s1,$s1,-1			# LENGTH - 1
addi $t0,$zero,0		# COUNTER
addi $s7,$zero,0		# RESULT

LOOP:
bgt $t0,$s1,EXIT		# STOP CONDITION

sll $t1,$t0,2
add $t1,$t1,$s0
lw $t5,0($t1)

rem $s3,$t5,2			# x[counter] % 2

beq $s3,0,SUM
addi $t0,$t0,1
j LOOP

SUM:
add $s7,$s7,$t5
addi $t0,$t0,1
j LOOP
EXIT: