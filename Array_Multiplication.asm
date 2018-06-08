.data
arr: .word 1,2,3,4,5
len: .word 5

.text
la $s0, arr				# BASE ADDRESS
lw $s1, len				# LENGTH
addi $s1,$s1,-1				# LENGTH - 1
addi $s2,$zero,1			# RESULT = 1
addi $t1,$zero,0			# COUNTER = 0

LOOP:

sll $t0,$t1,2				# i = i * 4
add $t0,$t0,$s0				# Address = i + BASE
lw $t5,0($t0)				# GET VALUE OF arr[counter]

mul  $s2,$s2,$t5			# RESULT *= arr[counter] 	

bge $t1,$s1,EXIT

addi $t1,$t1,1				# COUNTER ++
j LOOP

EXIT: