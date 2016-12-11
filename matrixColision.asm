# LIMPA LINHAS COMPLETAS DO TETRIS
# $t0 = contador do primeiro for
# $t1 = contador do segundo for
# $t2 = endereço da linha atual
limpa_linhas:
  li   $t0, 18		            # inicializa i = 18

ll_FOR1:
  beq  $t0, $zero, CLOSE      # termina caso chegue em zero
  la   $t5, 0xff000000        # começo da matriz
  add  $t5, $t5, $t0          # coloca na posição de memoria

  lb   $t2, 0($t5)            # pega o byte da linha $t0

  li   $t3, 255
  bne  $t2, $t3, ll_FOR1_END # verifica se a linha está preenchida

  move $t1, $t0             # j = i

ll_FOR2:
  beq $t1, $zero, ll_FOR1

  addi $t5, $t5, -1           # decrementa o endereço
  lb $t4, 0($t5)              # pega a linha anterior
  sw $t4, 1($t5)              # coloca na linha que foi apagada

ll_FOR2_END:
  addi $t1, $t1, -1           # decrementa o j
  j ll_FOR2


ll_FOR1_END:
  addi $t0, $t0, -1           # decrementa o i
  j ll_FOR1                   # volta para o FOR1

CLOSE:
  jr   $ra
