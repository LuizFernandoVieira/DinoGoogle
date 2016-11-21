.data

intro0: .asciiz "intro0.bin"
intro0: .asciiz "intro0.bin"
intro0: .asciiz "intro0.bin"
intro0: .asciiz "intro0.bin"
intro0: .asciiz "intro0.bin"
intro0: .asciiz "intro0.bin"
intro0: .asciiz "intro0.bin"
intro0: .asciiz "intro0.bin"
intro0: .asciiz "intro0.bin"
intro0: .asciiz "intro0.bin"
intro0: .asciiz "intro0.bin"

.text

  loop_intro_frames:
    beq $a3,$zero,fim_frames
    subi $a3,$a3,1
    la $a2,INICIO_VGA
    j desenha_intro
    
  desenha_intro:
    li $t7, 19200
		
  loop_intro:	
    beq $t7, $zero, fim_intro
    lw $t4, 0($a1)		
    sw $t4, 0($a2)
    addi $t7, $t7, -1
    addi $a1, $a1, 4
    addi $a2, $a2, 4
    j loop_intro

  fim_intro:
    j loop_frames
		
  fim_frames:
    li $a0, 200
    li $v0, 32
    syscall
    jr $ra