.data
array: .word 1,1,1,1,1
len: .word 5

.text
addi $s0,$zero,0		# SUM=0
la $s1,array			# BASE-ADDRESS
lw $t5,len
addi $t5,$t5,-1
addi $s2,$zero,0		# i=0

LOOP:

sll $t1,$s2,2			# i = i*4
add $t1,$t1,$s1			# address = i + base
lw $t0,0($t1)			# value of array[i]
add $s0,$s0,$t0

bge  $s2,$t5,EXIT
addi $s2,$s2,1
j LOOP
EXIT: