###############################################
#  Programa de exemplo para bitmap display    #
#  ISC Jun 2016				      #
#  Marcus Vinicius			      #
###############################################
.data 
FILE: .asciiz "snake.bin"
.text

# Preenche a tela de vermelho
	li $t1,0xFF012C00
	li $s2,0xFF000000
LOOP: 	beq $s2,$t1,FIM
	addi $s1, $s1, 
	sw $s1,0($s2)
	addi $s2,$s2,4
	j LOOP

FIM:	li $v0,10
	syscall
