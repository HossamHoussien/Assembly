.text
MIAN:

addi $s1,$0,10
add $a0,$zero,$s1
jal leaf
add $s7,$0,$v0
j exit

leaf:

addi $a0,$a0,10
add $v0,$0,$a0
jr $ra


exit: