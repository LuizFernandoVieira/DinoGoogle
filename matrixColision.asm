# Considerando que:
# IMPORTANTE! Carregue $s0 ~ $s3 tem as posições da peça atual antes de chamar
# IMPORTANTE! Retorna em $v0 o resultado, se colidiu $v0 = 0, senão $v0 = 1

  li   $v0, 1                 # inicializa o retorno como um
  li   $t1, 18		            # inicializa y = 17
  la   $t5, 0xff000012        # último byte

colisionFOR1:
  lb   $t0, 0($t5)	          # le o byte a ser avaliado
  addi $t5, $t5, -1           # byte anterior
  addi $t1, $t1, -1	          # decrementa y

  li   $t2, 8 	 	            # inicializa x
  beq  $t1, $zero, CLOSE

colisionFOR2:
  addi $t2, $t2, -1	          # decrementa x
  li   $t3, 1		              # inicializa comparador
  and  $t3, $t3, $t0	        # pega primeiro bit do byte
  srl  $t0, $t0, 1	          # coloca o segundo bit como primeiro

  beq  $t3, $zero, colisionEND_FOR2

  move $t4 $t2		            # operações do x feitas no $t4
  move $t6, $t1		            # operações do y feitas no $t6

  addi $t6, $t6, 1       	    # y+1
  addi $t4, $t4, 1       	    # x+1
  li   $t7, 8
  mul  $t4, $t4, $t7          # (x+1)*8
  mul  $t6, $t6, $t7	        # y*8
  li   $t7, 70
  add  $t6, $t6, $t7	        # (y*8)+70
  li   $t7, 320
  mul  $t6, $t6, $t7	        # ((y*8)+70)*320
  add  $t6, $t6, $t4	        # ((y*8)+70)*320 + (x+1)*8

  # VERIFICA COLISAO COM A MATRIZ
  beq  $s0, $t6, COLIDIU
  beq  $s1, $t6, COLIDIU
  beq  $s2, $t6, COLIDIU
  beq  $s3, $t6, COLIDIU

colisionEND_FOR2:
  beq  $t2, $zero, colisionFOR1        # finaliza o FOR
  j colisionFOR2

COLIDIU:
  li   $v0, 1
  jr   $ra

colisionCLOSE:
  jr   $ra
