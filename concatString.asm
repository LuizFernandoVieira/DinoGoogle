# String concatenate

.text

li $s0, 1

# Copy first string to result buffer
la $a0, str1
la $a1, result
jal strcopier
nop

# Concatenate second string on result buffer
# la $a0, str2
move $a0, $s0
or $a1, $v0, $zero
jal strcopier2
nop
j finish
nop

# String copier function
strcopier:
or $t0, $a0, $zero # Source
or $t1, $a1, $zero # Destination

loop:
lb $t2, 0($t0)
beq $t2, $zero, end
addiu $t0, $t0, 1
sb $t2, 0($t1)
addiu $t1, $t1, 1
b loop
nop
j end

strcopier2:
or $t0, $a0, $zero # Source
or $t1, $a1, $zero # Destination

loop2:
andi $t2, $t0, 0x000000FF
beq $t2, $zero, end
addiu $t0, $t0, 1
sb $t2, 0($t1)
addiu $t1, $t1, 1
b loop2

end:
or $v0, $t1, $zero # Return last position on result buffer
jr $ra
nop

finish:
li $v0, 1
la $a0, result
syscall
li $v0, 10
syscall
j finish
nop

.data
str1:
.asciiz "a"
str2:
.asciiz "1"
result:
.space 200
